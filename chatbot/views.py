from rest_framework.response import Response
from rest_framework.decorators import api_view
from django.db import connection
import os
import pickle
from rapidfuzz import process
import spacy

# -------------------------
# Load ML model
# -------------------------
BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
MODEL_PATH = os.path.join(BASE_DIR, "AI_Model", "model.pkl")
VEC_PATH = os.path.join(BASE_DIR, "AI_Model", "vectorizer.pkl")

model = pickle.load(open(MODEL_PATH, "rb"))
vectorizer = pickle.load(open(VEC_PATH, "rb"))

# -------------------------
# Load spaCy
# -------------------------
nlp = spacy.load("en_core_web_sm")

# -------------------------
# Helper
# -------------------------
def dictfetchall(cursor):
    columns = [col[0] for col in cursor.description]
    return [dict(zip(columns, row)) for row in cursor.fetchall()]

# -------------------------
# Extract Broker Name
# -------------------------
def extract_broker_name(message, broker_names):
    doc = nlp(message)
    entities = [ent.text.lower() for ent in doc.ents]

    match_name = None
    score = 0

    # Entity match
    if entities:
        result = process.extractOne(entities[0], broker_names)
        if result:
            match_name, score, _ = result

    # Fallback match
    if not match_name:
        result = process.extractOne(message, broker_names)
        if result:
            match_name, score, _ = result

    if score > 60:
        return match_name
    return None

# -------------------------
# Chatbot API
# -------------------------
@api_view(["GET"])
def chatbot_api(request):
    message = request.GET.get("message", "").strip()

    if not message:
        return Response({"message": "Enter message"})

    clean_msg = message.lower()

    # -------------------------
    # STEP 1: INTENT DETECTION
    # -------------------------
    if any(word in clean_msg for word in ["phone", "contact", "call", "number", "mobile"]):
            intent = "broker_contact"

    elif any(word in clean_msg for word in ["society", "area", "location"]):
            intent = "society_list"

    elif any(word in clean_msg for word in ["broker", "agent"]):
        if any(word in clean_msg for word in ["who", "detail", "info", "about"]):
            intent = "broker_info"
        else:
            intent = "broker_list"

    else:
        # ML fallback
        processed = vectorizer.transform([clean_msg])
        intent = model.predict(processed)[0]

    print("MESSAGE:", clean_msg)
    print("INTENT:", intent)

    # -------------------------
    # DATABASE
    # -------------------------
    with connection.cursor() as cursor:

        # Get all broker names once
        cursor.execute("SELECT broker_name FROM broker")
        brokers_list = dictfetchall(cursor)
        broker_names = [b["broker_name"].lower() for b in brokers_list]

        name = extract_broker_name(clean_msg, broker_names)

        # -------------------------
        # BROKER CONTACT
        # -------------------------
        if intent == "broker_contact":
            if name:
                cursor.execute("""
                    SELECT broker_name, broker_phoneno, broker_otherno
                    FROM broker
                    WHERE LOWER(broker_name) = %s
                """, [name])

                data = dictfetchall(cursor)

                if data:
                    return Response({
                        "intent": intent,
                        "contact": data[0]
                    })

            return Response({
                "intent": intent,
                "message": "Broker contact not found"
            })

        # -------------------------
        # BROKER INFO
        # -------------------------
        elif intent == "broker_info":
            if name:
                cursor.execute("""
                    SELECT broker_name, broker_phoneno, broker_otherno,
                           broker_image, broker_comession, broker_email, broker_address
                    FROM broker
                    WHERE LOWER(broker_name) = %s
                """, [name])

                data = dictfetchall(cursor)

                if data:
                    return Response({
                        "intent": intent,
                        "broker": data[0]
                    })

            return Response({
                "intent": intent,
                "message": "Broker not found"
            })

        # -------------------------
        # BROKER LIST
        # -------------------------
        elif intent == "broker_list":
            cursor.execute("""
                SELECT broker_name, broker_phoneno, broker_otherno 
                FROM broker
            """)
            data = dictfetchall(cursor)

            return Response({
                "intent": intent,
                "brokers": data
            })

        # -------------------------
        # SOCIETY LIST
        # -------------------------
        elif intent == "society_list":
            cursor.execute("SELECT society_name FROM society")
            data = dictfetchall(cursor)

            return Response({
                "intent": intent,
                "societies": data
            })

    return Response({
        "intent": intent,
        "message": "No data found"
    })
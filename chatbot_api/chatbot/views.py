from rest_framework.response import Response
from rest_framework.decorators import api_view
from django.db import connection
import os
import pickle
from rapidfuzz import process
import spacy


# =========================
# LOAD ML MODEL
# =========================
BASE_DIR = os.path.dirname(
    os.path.dirname(
        os.path.dirname(os.path.abspath(__file__))
    )
)

MODEL_PATH = os.path.join(
    BASE_DIR,
    "AI_Model",
    "model.pkl"
)

VEC_PATH = os.path.join(
    BASE_DIR,
    "AI_Model",
    "vectorizer.pkl"
)

model = pickle.load(open(MODEL_PATH, "rb"))
vectorizer = pickle.load(open(VEC_PATH, "rb"))


# =========================
# LOAD SPACY MODEL
# =========================
nlp = spacy.load("en_core_web_sm")


# =========================
# HELPER FUNCTION
# =========================
def dictfetchall(cursor):

    columns = [col[0] for col in cursor.description]

    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]


# =========================
# FUZZY INTENT MATCH
# =========================
def fuzzy_intent_match(
    message,
    keywords,
    threshold=75
):

    words = message.lower().split()

    for msg_word in words:

        result = process.extractOne(
            msg_word,
            keywords
        )

        if result:

            matched_word, score, _ = result

            print(
                "FUZZY:",
                msg_word,
                matched_word,
                score
            )

            if score >= threshold:

                return True

    return False


# =========================
# EXTRACT BROKER NAME
# =========================
def extract_broker_name(
    message,
    broker_names
):

    message = message.lower().strip()

    # =========================
    # EXACT MATCH
    # =========================
    for broker in broker_names:

        if broker == message:

            return broker

    # =========================
    # PARTIAL MATCH
    # =========================
    for broker in broker_names:

        if message in broker:

            return broker

    # =========================
    # SPACY ENTITY MATCH
    # =========================
    doc = nlp(message)

    entities = [
        ent.text.lower()
        for ent in doc.ents
    ]

    if entities:

        result = process.extractOne(
            entities[0],
            broker_names
        )

        if result:

            match_name, score, _ = result

            if score > 60:

                return match_name

    # =========================
    # FUZZY MATCH
    # =========================
    result = process.extractOne(
        message,
        broker_names
    )

    if result:

        match_name, score, _ = result

        if score > 70:

            return match_name

    return None


# =========================
# CHATBOT API
# =========================
@api_view(["GET"])
def chatbot_api(request):

    message = request.GET.get(
        "message",
        ""
    ).strip()

    if not message:

        return Response({
            "message": "Enter message"
        })

    clean_msg = message.lower()

    print("MESSAGE:", clean_msg)

    # =========================
    # KEYWORDS
    # =========================
    society_keywords = [
        "society",
        "societies",
        "socitty",
        "socites",
        "socities",
        "socity",
        "housing",
        "area",
        "location"
    ]

    broker_keywords = [
        "broker",
        "brokers",
        "agent",
        "dealer"
    ]

    contact_keywords = [
        "phone",
        "contact",
        "call",
        "number",
        "mobile"
    ]

    info_keywords = [
        "info",
        "detail",
        "details",
        "about",
        "profile"
    ]

    # =========================
    # GET ALL BROKER NAMES
    # =========================
    with connection.cursor() as cursor:

        cursor.execute("""
            SELECT broker_name
            FROM broker
        """)

        brokers_list = dictfetchall(cursor)

    broker_names = [
        b["broker_name"].lower()
        for b in brokers_list
    ]

    # =========================
    # EXTRACT NAME
    # =========================
    detected_name = extract_broker_name(
        clean_msg,
        broker_names
    )

    print("MATCHED NAME:", detected_name)

    # =========================
    # INTENT DETECTION
    # =========================

    # DIRECT NAME ONLY
    if detected_name and clean_msg == detected_name:

        intent = "broker_info"

    # CONTACT + NAME
    elif (
        detected_name
        and
        any(
            word in clean_msg
            for word in contact_keywords
        )
    ):

        intent = "broker_contact"

    # INFO + NAME
    elif (
        detected_name
        and
        any(
            word in clean_msg
            for word in info_keywords
        )
    ):

        intent = "broker_info"

    # CONTACT WORDS
    elif any(
        word in clean_msg
        for word in contact_keywords
    ):

        intent = "broker_contact"

    # SOCIETY
    elif any(
        word in clean_msg
        for word in society_keywords
    ):

        intent = "society_list"

    # BROKER
    elif any(
        word in clean_msg
        for word in broker_keywords
    ):

        if any(
            word in clean_msg
            for word in info_keywords
        ):

            intent = "broker_info"

        else:

            intent = "broker_list"

    # FUZZY CONTACT
    elif fuzzy_intent_match(
        clean_msg,
        contact_keywords
    ):

        intent = "broker_contact"

    # FUZZY SOCIETY
    elif fuzzy_intent_match(
        clean_msg,
        society_keywords
    ):

        intent = "society_list"

    # FUZZY BROKER
    elif fuzzy_intent_match(
        clean_msg,
        broker_keywords
    ):

        intent = "broker_list"

    # DIRECT NAME DETECTED
    elif detected_name:

        intent = "broker_info"

    # =========================
    # ML FALLBACK
    # =========================
    else:

        processed = vectorizer.transform(
            [clean_msg]
        )

        prediction = model.predict(
            processed
        )[0]

        try:

            probability = max(
                model.predict_proba(
                    processed
                )[0]
            )

            print(
                "PREDICTION:",
                prediction
            )

            print(
                "PROBABILITY:",
                probability
            )

            if probability < 0.55:

                intent = "unknown"

            else:

                intent = prediction

        except:

            intent = prediction

    print("FINAL INTENT:", intent)

    # =========================
    # DATABASE OPERATIONS
    # =========================
    with connection.cursor() as cursor:

        # =========================
        # BROKER CONTACT
        # =========================
        if intent == "broker_contact":

            # SPECIFIC BROKER
            if detected_name:

                cursor.execute("""
                    SELECT
                        broker_name,
                        broker_phoneno,
                        broker_otherno
                    FROM broker
                    WHERE LOWER(broker_name) = %s
                """, [detected_name])

                data = dictfetchall(cursor)

                if data:

                    broker = data[0]

                    return Response({
                        "intent": intent,
                        "message": f"""
Broker Name: {broker['broker_name']}
Phone: {broker['broker_phoneno']}
Other Number: {broker['broker_otherno']}
                        """
                    })

                return Response({
                    "intent": intent,
                    "message": "Broker contact not found"
                })

            # ALL BROKERS CONTACT
            cursor.execute("""
                SELECT
                    broker_name,
                    broker_phoneno,
                    broker_otherno
                FROM broker
            """)

            data = dictfetchall(cursor)

            if not data:

                return Response({
                    "intent": intent,
                    "message": "No brokers found"
                })

            broker_text = ""

            for broker in data:

                broker_text += f"""
Broker Name: {broker['broker_name']}
Phone: {broker['broker_phoneno']}
Other Number: {broker['broker_otherno']}

"""

            return Response({
                "intent": "broker_contact_list",
                "message": broker_text
            })

        # =========================
        # BROKER INFO
        # =========================
        elif intent == "broker_info":

            # SPECIFIC BROKER
            if detected_name:

                cursor.execute("""
                    SELECT
                        broker_name,
                        broker_phoneno,
                        broker_otherno,
                        broker_image,
                        broker_comession,
                        broker_email,
                        broker_address
                    FROM broker
                    WHERE LOWER(broker_name) = %s
                """, [detected_name])

                data = dictfetchall(cursor)

                if data:

                    broker = data[0]

                    return Response({
                        "intent": intent,
                        "message": f"""
{broker['broker_name']}

📞 {broker['broker_phoneno']}
☎ {broker['broker_otherno']}
📧 {broker['broker_email']}
📍 {broker['broker_address']}
💰 %: {broker['broker_comession']} Commission
                        """,
                        "broker": broker
                    })

                return Response({
                    "intent": intent,
                    "message": "Broker not found"
                })

            # ALL BROKERS
            cursor.execute("""
                SELECT
                    broker_name,
                    broker_phoneno,
                    broker_otherno
                FROM broker
            """)

            data = dictfetchall(cursor)

            return Response({
                "intent": "broker_list",
                "brokers": data
            })

        # =========================
        # BROKER LIST
        # =========================
        elif intent == "broker_list":

            cursor.execute("""
                SELECT
                    broker_name,
                    broker_phoneno,
                    broker_otherno
                FROM broker
            """)

            data = dictfetchall(cursor)

            return Response({
                "intent": intent,
                "brokers": data
            })

        # =========================
        # SOCIETY LIST
        # =========================
        elif intent == "society_list":

            cursor.execute("""
                SELECT society_name
                FROM society
            """)

            data = dictfetchall(cursor)

            return Response({
                "intent": intent,
                "societies": data
            })

        # =========================
        # UNKNOWN
        # =========================
        elif intent == "unknown":

            return Response({
                "intent": intent,
                "message": "Sorry, I didn't understand your query."
            })

    # =========================
    # DEFAULT
    # =========================
    return Response({
        "intent": intent,
        "message": "No data found"
    })
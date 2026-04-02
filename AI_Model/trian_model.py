import os
import pickle
import string
import nltk
import random
import numpy as np
import matplotlib.pyplot as plt

from nltk.stem import WordNetLemmatizer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split, learning_curve
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report

# -------------------------
# NLTK Setup
# -------------------------
try:
    nltk.data.find('corpora/wordnet')
except:
    nltk.download("wordnet")

# -------------------------
# Folder Setup
# -------------------------
os.makedirs("results", exist_ok=True)

# -------------------------
# Data
# -------------------------
names = ["ali","ahmed","iqra","esha","farhan"]

templates = {
    "broker_list": [
        "show brokers","list brokers","display brokers",
        "broker list","all brokers","show agents","agent list",
        "who are brokers","give broker names",
        "i want brokers","show all agents","list all brokers"
    ],

    "broker_info": [
        "who is {name}","tell me about {name}",
        "details of {name}","{name} info","who is agent {name}"
    ],

    "broker_contact": [
        "phone number of {name}",
        "contact number of {name}",
        "what is {name} phone",
        "give phone of {name}",
        "how to contact {name}",
        "{name} contact number",
        "call {name}",
        "number of agent {name}"
    ],

    "society_list": [
        "show societies","list societies","society list",
        "all societies","areas list","show areas",
        "housing areas","available societies",
        "which areas available","show locations"
    ]
}

# -------------------------
# Build Dataset
# -------------------------
training_data = []

for intent in templates:
    if intent not in ["broker_info", "broker_contact"]:
        for sentence in templates[intent]:
            training_data.append((sentence, intent))

for name in names:
    for sentence in templates["broker_info"]:
        training_data.append((sentence.format(name=name), "broker_info"))

    for sentence in templates["broker_contact"]:
        training_data.append((sentence.format(name=name), "broker_contact"))

# Add noisy/real data (IMPORTANT for realistic accuracy)
training_data += [
    ("i want agent", "broker_list"),
    ("show me property dealers", "broker_list"),
    ("who is ali", "broker_info"),
    ("ali details please", "broker_info"),
    ("give contact of ahmed", "broker_contact"),
    ("ahmed phone?", "broker_contact"),
    ("areas available?", "society_list"),
    ("housing schemes list", "society_list"),
    ("tell me about farhan", "broker_info"),
    ("call esha", "broker_contact"),
]

random.shuffle(training_data)

print("Total samples:", len(training_data))

# -------------------------
# Preprocessing
# -------------------------
lemmatizer = WordNetLemmatizer()

def preprocess(text):
    text = text.lower()
    text = text.translate(str.maketrans('', '', string.punctuation))
    words = text.split()
    words = [lemmatizer.lemmatize(w) for w in words]
    return " ".join(words)

X = [preprocess(x[0]) for x in training_data]
y = [x[1] for x in training_data]

# -------------------------
# Split (important for realistic accuracy)
# -------------------------
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.3, random_state=42
)

# -------------------------
# Vectorizer
# -------------------------
vectorizer = TfidfVectorizer(ngram_range=(1,2))
X_train_vec = vectorizer.fit_transform(X_train)
X_test_vec = vectorizer.transform(X_test)

# -------------------------
# Model (better than NB)
# -------------------------
model = LogisticRegression(max_iter=200)
model.fit(X_train_vec, y_train)

# -------------------------
# Evaluation
# -------------------------
y_pred = model.predict(X_test_vec)

accuracy = accuracy_score(y_test, y_pred)
print("Accuracy:", accuracy)

report = classification_report(y_test, y_pred)
print("\nClassification Report:\n", report)

# -------------------------
# Save classification report (FIXED)
# -------------------------
report_path = os.path.join("results", "classification_report.txt")

with open(report_path, "w", encoding="utf-8") as f:
    f.write("Classification Report\n")
    f.write("=====================\n\n")
    f.write(report)

print(f"Report saved at: {report_path}")

# -------------------------
# Confusion Matrix
# -------------------------
cm = confusion_matrix(y_test, y_pred)
labels = sorted(list(set(y)))

plt.figure()
plt.imshow(cm)
plt.title("Confusion Matrix")
plt.colorbar()

plt.xticks(range(len(labels)), labels, rotation=45)
plt.yticks(range(len(labels)), labels)

for i in range(len(labels)):
    for j in range(len(labels)):
        plt.text(j, i, cm[i, j], ha='center', va='center')

plt.xlabel("Predicted")
plt.ylabel("Actual")

plt.savefig("results/confusion_matrix.png")
plt.close()

# -------------------------
# Learning Curve
# -------------------------
train_sizes, train_scores, test_scores = learning_curve(
    model, vectorizer.transform(X), y, cv=5
)

train_mean = np.mean(train_scores, axis=1)
test_mean = np.mean(test_scores, axis=1)

plt.figure()
plt.plot(train_sizes, train_mean)
plt.plot(train_sizes, test_mean)

plt.title("Learning Curve")
plt.xlabel("Training Size")
plt.ylabel("Score")

plt.savefig("results/learning_curve.png")
plt.close()

# -------------------------
# Save Model
# -------------------------
pickle.dump(model, open("model.pkl", "wb"))
pickle.dump(vectorizer, open("vectorizer.pkl", "wb"))

print("✅ Model trained successfully with realistic accuracy!")
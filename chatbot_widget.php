<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Property Chatbot</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
/* Floating Button */
#chat-btn {
  position: fixed;
  bottom: 20px;
  right: 20px;
  background: #4A90E2;
  color: #fff;
  border: none;
  border-radius: 50%;
  width: 60px;
  height: 60px;
  font-size: 28px;
  cursor: pointer;
  box-shadow: 0 4px 12px rgba(0,0,0,0.3);
  z-index: 1000;
  display: flex;
  align-items: center;
  justify-content: center;
}

/* Chat Window */
#chat-window {
  position: fixed;
  bottom: 90px;
  right: 20px;
  width: 360px;
  max-height: 500px;
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 8px 20px rgba(0,0,0,0.3);
  display: none;
  flex-direction: column;
  overflow: hidden;
  font-family: "Segoe UI", sans-serif;
  z-index: 1000;
}

/* Header */
#chat-header {
  background: #4A90E2;
  color: #fff;
  padding: 12px;
  font-weight: bold;
  text-align: center;
  font-size: 16px;
}

/* Chat Body */
#chat-body {
  flex: 1;
  padding: 12px;
  overflow-y: auto;
  font-size: 14px;
  background: #f7f7f8;
}

/* Messages */
.chat-message {
  margin: 8px 0;
  display: flex;
  align-items: flex-end;
}

.user-msg {
  justify-content: flex-end;
}

.user-msg .msg-bubble {
  background: #4A90E2;
  color: #fff;
  border-radius: 18px 18px 0 18px;
  padding: 10px 14px;
  max-width: 75%;
  box-shadow: 0 2px 6px rgba(0,0,0,0.2);
}

.bot-msg {
  justify-content: flex-start;
}

.bot-msg .msg-bubble {
  background: #e2e2e2;
  color: #000;
  border-radius: 18px 18px 18px 0;
  padding: 10px 14px;
  max-width: 75%;
  display: flex;
  align-items: center;
  gap: 8px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}

/* Broker Image */
.bot-msg img {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  object-fit: cover;
}

/* Typing Loader */
#typing-indicator {
  font-style: italic;
  color: #888;
  margin: 5px 0;
  display: none;
  font-size: 13px;
  display: flex;
  align-items: center;
  gap: 6px;
}

.loader {
  border: 3px solid #f3f3f3;
  border-top: 3px solid #4A90E2;
  border-radius: 50%;
  width: 14px;
  height: 14px;
  animation: spin 1s linear infinite;
}

@keyframes spin {
  0% { transform: rotate(0deg);}
  100% { transform: rotate(360deg);}
}

/* Input Box */
#chat-input {
  display: flex;
  border-top: 1px solid #ddd;
  padding: 6px;
  background: #fff;
}

#chat-input input {
  flex: 1;
  border: none;
  padding: 8px 10px;
  font-size: 14px;
  border-radius: 20px;
  background: #f1f1f1;
  outline: none;
}

#chat-input button {
  border: none;
  background: #4A90E2;
  color: #fff;
  padding: 8px 14px;
  margin-left: 6px;
  border-radius: 20px;
  cursor: pointer;
  font-size: 14px;
}

#chat-input button:hover {
  background: #357ABD;
}
</style>
</head>
<body>

<button id="chat-btn"><i class="fa-solid fa-comment"></i></button>

<div id="chat-window">
  <div id="chat-header">Property Chatbot</div>
  <div id="chat-body">
    <div class="bot-msg chat-message">
      <div class="msg-bubble">
        <img src="data:image/png;base64,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" />
        Hello! Ask me about brokers or societies.
      </div>
    </div>
  </div>
  <div id="typing-indicator"><div class="loader"></div> Bot is responding...</div>
  <div id="chat-input">
    <input type="text" id="user-input" placeholder="Type your message..." />
    <button id="send-btn">Send</button>
  </div>
</div>

<script>
const chatBtn = document.getElementById("chat-btn");
const chatWindow = document.getElementById("chat-window");
chatBtn.addEventListener("click", () => {
  chatWindow.style.display = (chatWindow.style.display === "flex") ? "none" : "flex";
});

const inputEl = document.getElementById("user-input");
const sendBtn = document.getElementById("send-btn");
const chatBody = document.getElementById("chat-body");
const typingEl = document.getElementById("typing-indicator");

function scrollToBottom() {
  chatBody.scrollTop = chatBody.scrollHeight;
}

function sendMessage() {
  const msg = inputEl.value.trim();
  if(!msg) return;

  // Show user message
  chatBody.innerHTML += `
    <div class="user-msg chat-message">
      <div class="msg-bubble">${msg}</div>
    </div>`;
  scrollToBottom();
  inputEl.value = "";

  // Show typing
  typingEl.style.display = "flex";

  fetch(`http://127.0.0.1:8000/chatbot_api/?message=${encodeURIComponent(msg)}`)
    .then(res => res.json())
    .then(data => {
      typingEl.style.display = "none";

      let botHtml = "";

      if(data.intent === "broker_list" && data.brokers){
        botHtml = data.brokers.map(b => {
          const name = b.broker_name || "No Name";
       
          const img = b.broker_image || "data:image/jpeg;base64,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";
          return `
            <div class="bot-msg chat-message">
              <div class="msg-bubble">
                <img src="${img}" />
                <div>
                  <strong>${name}</strong><br>
                  
                </div>
              </div>
            </div>`;
        }).join("");
      }
      else if(data.intent === "broker_contact" && data.contact){
  const b = data.contact;
  const img = b.broker_image || "data:image/jpeg;base64,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";

  botHtml = `
    <div class="bot-msg chat-message">
      <div class="msg-bubble">
        <img src="${img}" />
        <div>
          <strong>${b.broker_name || "N/A"}</strong><br>
          📞 ${b.broker_phoneno || "N/A"}<br>
          ☎ ${b.broker_otherno || "N/A"}
        </div>
      </div>
    </div>`;
}
      else if(data.intent === "broker_info" && data.broker){
        const b = data.broker;
      const img = b.broker_image || "data:image/jpeg;base64,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";

        botHtml = `
          <div class="bot-msg chat-message">
            <div class="msg-bubble">
              <img src="${img}" />
              <div>
                <strong>${b.broker_name || "N/A"}</strong><br>
                📞 ${b.broker_phoneno || "N/A"}<br>
                ☎ ${b.broker_otherno || "N/A"}<br>
                📧 ${b.broker_email || "N/A"}<br>
                📍 ${b.broker_address || "N/A"}<br>
                💰 %: ${b.broker_comession || "N/A"}<br>
                
              </div>
            </div>
          </div>`;
      }
      else if(data.intent === "society_list" && data.societies){
        botHtml = `
          <div class="bot-msg chat-message">
            <div class="msg-bubble">
              ${data.societies.map(s => `🏠 ${s.society_name}`).join("<br>")}
            </div>
          </div>`;
      } else {
        botHtml = `
          <div class="bot-msg chat-message">
            <div class="msg-bubble">${data.message || "Sorry, I didn't understand."}</div>
          </div>`;
      }

      chatBody.innerHTML += botHtml;
      scrollToBottom();
    })
    .catch(err => {
      typingEl.style.display = "none";
      chatBody.innerHTML += `
        <div class="bot-msg chat-message">
          <div class="msg-bubble">❌ Server not responding</div>
        </div>`;
      scrollToBottom();
      console.error(err);
    });
}

sendBtn.addEventListener("click", sendMessage);
inputEl.addEventListener("keydown", (e) => { if(e.key === "Enter") sendMessage(); });
</script>
</body>
</html>
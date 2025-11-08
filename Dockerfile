# ✅ Correct Dockerfile for Render n8n Deployment

FROM n8nio/n8n:latest

# Set timezone
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV TZ="Asia/Kolkata"

# Tell Render which port to use
ENV N8N_PORT=$PORT
ENV WEBHOOK_URL=https://jobscanner-n8n.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://jobscanner-n8n.onrender.com/

# Expose the Render dynamic port
EXPOSE $PORT

# Start n8n
CMD ["tini", "--", "n8n", "start"]

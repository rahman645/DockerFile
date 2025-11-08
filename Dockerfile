# ✅ Clean Render Dockerfile for n8n

FROM n8nio/n8n:latest

# Set timezone to India
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV TZ="Asia/Kolkata"

# Use Render's dynamic port
ENV N8N_PORT=$PORT
ENV WEBHOOK_URL=https://jobscanner-n8n.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://jobscanner-n8n.onrender.com/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_USER_FOLDER=/home/node/.n8n

# Expose dynamic port
EXPOSE $PORT

# Start n8n directly
CMD ["n8n"]

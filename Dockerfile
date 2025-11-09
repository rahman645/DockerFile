# ✅ Stable Render n8n Dockerfile
FROM n8nio/n8n:1.54.0

# Set timezone for India
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV TZ="Asia/Kolkata"

# Use Render’s dynamic port
ENV N8N_PORT=$PORT
ENV WEBHOOK_URL=https://jobscanner-n8n.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://jobscanner-n8n.onrender.com/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_USER_FOLDER=/home/node/.n8n

# Expose Render dynamic port
EXPOSE $PORT

# Start n8n
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]

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

# Expose dynamic port
EXPOSE $PORT

# Start n8n correctly with tini (init process)
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]

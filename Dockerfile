# ✅ Stable Render n8n Dockerfile (India Timezone, Dynamic Port, Persistent Ready)
FROM n8nio/n8n:1.54.0

# Set timezone for India
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV TZ="Asia/Kolkata"

# Use Render's dynamic port
ENV N8N_PORT=$PORT
ENV WEBHOOK_URL=https://jobscanner-n8n.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://jobscanner-n8n.onrender.com/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_USER_FOLDER=/home/node/.n8n

# Expose the Render port
EXPOSE $PORT

# Keep n8n running in foreground
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]

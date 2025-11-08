# ✅ WORKING Dockerfile for Render n8n Deployment

# 1. Use the official n8n image (includes n8n binary pre-installed)
FROM n8nio/n8n:latest

# 2. Set timezone for India
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV TZ="Asia/Kolkata"

# 3. Use Render’s dynamic port
ENV N8N_PORT=$PORT
ENV WEBHOOK_URL=https://jobscanner-n8n.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://jobscanner-n8n.onrender.com/

# 4. Expose the port Render injects
EXPOSE $PORT

# 5. Launch using tini (init wrapper included in the base image)
ENTRYPOINT ["tini", "--"]

# 6. Start n8n
CMD ["n8n", "start"]

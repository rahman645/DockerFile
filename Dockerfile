# n8n Dockerfile for Render Deployment

FROM n8nio/n8n

# Set timezone to India
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV TZ="Asia/Kolkata"

# Render expects web service to listen on $PORT
# So tell n8n to use Render's dynamic port instead of fixed 5678
ENV N8N_PORT=$PORT
ENV WEBHOOK_URL=https://jobscanner-n8n.onrender.com/

# Expose the Render dynamic port
EXPOSE $PORT

CMD ["n8n", "start"]

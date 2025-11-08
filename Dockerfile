# Simple n8n deployment image
FROM n8nio/n8n

# Set timezone to India
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV TZ="Asia/Kolkata"

# Expose default port
EXPOSE 5678

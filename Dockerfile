# Base Ghost image
FROM ghost:5-alpine

# Copy your content folder (themes, images, routes, uploads, etc.)
COPY ./content /var/lib/ghost/content

# Optional: Include custom routing
COPY ./routes.yaml /var/lib/ghost/content/settings/routes.yaml

# Expose the port used by Ghost
EXPOSE 2368

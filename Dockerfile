FROM ghost:5-alpine

# Copy your theme, routes, and content folders
COPY ./content /var/lib/ghost/content
COPY ./routes.yaml /var/lib/ghost/content/settings/routes.yaml

# Force Ghost to use SQLite
ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

EXPOSE 2368

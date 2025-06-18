FROM ghost:5-alpine

RUN npm install pg

COPY ./content /var/lib/ghost/content
COPY ./routes.yaml /var/lib/ghost/content/settings/routes.yaml

EXPOSE 2368

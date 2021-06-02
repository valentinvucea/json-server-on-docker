# pull base image
FROM node:16-alpine3.11

RUN npm install -g --production json-server
RUN rm -rf /root/.npm
RUN rm -rf /usr/lib/node_modules/npm

WORKDIR /data

# Define default command.
ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD ["--watch", "/data/db.json"]

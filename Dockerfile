FROM node:18-buster-slim

WORKDIR /app

RUN npm install dynamodb-admin

COPY server.js .

EXPOSE 8001

CMD ["node", "server.js"]

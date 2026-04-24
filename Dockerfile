FROM node:18-buster-slim

WORKDIR /app

RUN npm install -g dynamodb-admin

EXPOSE 8001

CMD ["sh", "-c", "dynamodb-admin"]

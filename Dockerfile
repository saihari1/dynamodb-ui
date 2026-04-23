FROM node:18

WORKDIR /app

RUN npm install -g dynamodb-admin

EXPOSE 8001

CMD ["dynamodb-admin"]

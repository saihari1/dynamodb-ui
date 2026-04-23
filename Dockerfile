FROM node:18

WORKDIR /app

RUN npm install -g dynamodb-admin

ENV DYNAMO_ENDPOINT=http://dynamodb-local.railway.internal:8000

EXPOSE 8001

CMD ["dynamodb-admin"]

FROM node:18-buster-slim

WORKDIR /app

RUN npm install -g dynamodb-admin

EXPOSE 8001

# Make sure the DYNAMO_ENDPOINT from Railway is used
CMD ["sh", "-c", "dynamodb-admin"]

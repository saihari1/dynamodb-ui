FROM node:18-buster-slim

WORKDIR /app

RUN npm install -g dynamodb-admin

EXPOSE 8001

# Make sure the DYNAMO_ENDPOINT from Railway is used
CMD ["sh", "-c", "DYNAMO_ENDPOINT=$DYNAMO_ENDPOINT AWS_REGION=$AWS_REGION AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY dynamodb-admin"]

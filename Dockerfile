FROM node:18-buster-slim

WORKDIR /app

RUN npm install -g dynamodb-admin

EXPOSE 8001

CMD ["sh", "-c", "AWS_ACCESS_KEY_ID=dummy AWS_SECRET_ACCESS_KEY=dummy AWS_REGION=us-east-1 DYNAMODB_ENDPOINT=http://shortline.proxy.rlwy.net:51951 dynamodb-admin"]

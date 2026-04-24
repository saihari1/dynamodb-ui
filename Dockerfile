FROM node:18-buster-slim

WORKDIR /app

RUN npm install -g dynamodb-admin

COPY start.sh .
RUN chmod +x start.sh

EXPOSE 8001

CMD ["./start.sh"]

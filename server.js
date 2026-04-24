const dynamodbAdmin = require("dynamodb-admin");

process.env.DYNAMODB_ENDPOINT = process.env.DYNAMODB_ENDPOINT;
process.env.AWS_REGION = process.env.AWS_REGION || "us-east-1";
process.env.AWS_ACCESS_KEY_ID = process.env.AWS_ACCESS_KEY_ID || "dummy";
process.env.AWS_SECRET_ACCESS_KEY = process.env.AWS_SECRET_ACCESS_KEY || "dummy";

dynamodbAdmin.start({
  port: 8080,
});

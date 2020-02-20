FROM node:12.16.1-alpine3.11

RUN apt-get update -y && apt-get upgrade -y && apt-get install jq -y && npm install netlify-cli -g

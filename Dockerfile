FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./scripts/. .

EXPOSE 3000

ENV IotHubConnectionString='HostName=VezParking.azure-devices.net;SharedAccessKeyName=service;SharedAccessKey=byJt/77zvd8BAlGS3E0JJ2jikOL3ZzqWrfmSg7vUrF4='
ENV EventHubConsumerGroup=monitoring
CMD [ "node", "server.js" ]
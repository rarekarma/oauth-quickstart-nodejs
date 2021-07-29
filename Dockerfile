FROM node:8.15.1-alpine

WORKDIR /usr/src/oauth-quickstart-nodejs

# Install
COPY ./index.js ./
COPY ./package.json ./
RUN npm install

ENV CLIENT_ID="98b54744-f71a-4f1a-b4aa-72e55ada7f80"
ENV CLIENT_SECRET="f92c11f3-bcfd-4721-aeab-d1201c96a64d"
ENV SCOPE="contacts"

EXPOSE 3000

ENTRYPOINT [ "node", "index.js" ]

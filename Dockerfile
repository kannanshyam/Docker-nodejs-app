FROM alpine:latest

RUN mkdir /var/nodejsapp/

WORKDIR /var/nodejsapp/

COPY . .

RUN apk update

RUN apk add --no-cache nodejs npm

RUN npm install

Expose 8080

CMD [ "node" , "server.js" ]

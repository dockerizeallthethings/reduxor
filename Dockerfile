FROM node:8-alpine

WORKDIR /code/

ENV PORT 3181

ENV ASSET_HOST http://0.0.0.0:8080

EXPOSE 3181 8080

RUN apk --update add bash

COPY . .

RUN npm i

ENTRYPOINT npm start

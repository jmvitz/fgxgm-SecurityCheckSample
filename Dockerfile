FROM node:18.19.1

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node:21.7.0-bookworm-slim", "index.js" ]

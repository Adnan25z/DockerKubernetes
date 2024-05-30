FROM node

WORKDIR /app

COPY pacakge.json /app

RUN npm install

COPY . /app

EXPOSE 80

CMD ["node", "server.js"]
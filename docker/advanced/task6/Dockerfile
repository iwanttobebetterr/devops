FROM node:12-alpine

WORKDIR /app

COPY ./nodejs-mongodb-master/package.json ./nodejs-mongodb-master/package-lock.json ./

RUN npm install

COPY ./nodejs-mongodb-master ./

CMD ["node", "./src/app.js"]
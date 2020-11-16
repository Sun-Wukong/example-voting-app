FROM node:8.9-alpine

WORKDIR /app

RUN npm install -g nodemon
ADD package.json /app/package.json
RUN npm config set registry http://registry.npmjs.org
RUN npm install && npm ls
RUN mv /app/node_modules /node_modules

ADD . /app
RUN npm test


ENV PORT 80
EXPOSE 80

CMD ["node", "server.js"]

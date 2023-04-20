FROM node:20

RUN npm install -g pm2
WORKDIR /home/rumah
COPY package.json .
RUN npm install
COPY . .
CMD pm2-runtime start index.js --name bot

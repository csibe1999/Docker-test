FROM node:16-alpine3.14

RUN npm install pm2 -g

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
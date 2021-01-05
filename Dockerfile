# FROM node:12-alpine

# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install --only=production
# COPY . .
# EXPOSE 4000
# CMD ["node","app.js"]
FROM node:12-alpine

WORKDIR /usr/app

COPY package*.json ./

RUN npm i --quiet

COPY . .

RUN npm install pm2 -g

CMD ["pm2-runtime", "app.js"]
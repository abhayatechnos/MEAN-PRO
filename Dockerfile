# FROM node:12-alpine

# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install --only=production
# COPY . .
# EXPOSE 4000
# CMD ["node","app.js"]
# FROM node:12-alpine

# WORKDIR /usr/app

# COPY package*.json ./

# RUN npm i --quiet

# COPY . .

# RUN npm install pm2 -g

# CMD ["pm2-runtime", "app.js"]
FROM node:carbon


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8000
CMD [ "npm", "start" ]
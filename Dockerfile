FROM node:12.16.1-alpine3.9

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
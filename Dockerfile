FROM node:16
WORKDIR .
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3006
CMD [ "node", "server.js" ]
FROM node

WORKDIR /app

COPY package*.json ./
RUN npm install && npm install -g gulp

COPY . .
RUN gulp build

EXPOSE 8080
CMD [ "node", "dist/index.js" ]
FROM node:14-alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY *.js ./
RUN mkdir -p ./views
RUN mkdir -p ./public
RUN mkdir -p ./routes
COPY views/ ./views/
COPY public/ ./public/
COPY routes/ ./routes/
COPY *.js ./
CMD [ "node", "app.js" ]
FROM node:alpine3.16

ENV NODE_ENV production
ENV LISTEN_PORT=80
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE $LISTEN_PORT
CMD npm start
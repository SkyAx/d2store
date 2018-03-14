FROM node:6.9.1

RUN mkdir -p /usr/src/d2store
COPY dist /usr/src/d2store/app
COPY authMiddleware.js /usr/src/d2store/
COPY data.js /usr/src/d2store/
COPY deploy-server.js /usr/src/d2store/server.js
COPY deploy-package.json /usr/src/d2store/package.json

WORKDIR /usr/src/d2store

RUN npm install

EXPOSE 3000
EXPOSE 3500

CMD ["npm", "start"]

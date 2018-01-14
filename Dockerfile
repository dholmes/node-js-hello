FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .
EXPOSE 8080
EXPOSE 5858
CMD ["node", "--inspect=0.0.0.0:5858","app.js"]
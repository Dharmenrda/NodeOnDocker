#FROM node:argon

# Create app directory
#RUN mkdir -p /usr/src/app
#WORKDIR /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app
#RUN npm install

# Bundle app source
#COPY . /usr/src/app

#EXPOSE 8080
#CMD [ "npm", "start" ]
#CMD ["node","server.js"]

FROM node

ADD package.json package.json  
RUN npm install  
ADD . .

EXPOSE 8080
CMD ["node","server.js"]


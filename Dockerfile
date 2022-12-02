FROM node:14.19.3-alpine

# Create app directory
WORKDIR /usr/src/app
RUN apk add --no-cache python2 g++ make
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --production

RUN npm install pm2@latest -g

# Bundle app source
COPY . .

CMD [ "pm2", "delete", "express-backend" ]

CMD [ "npm", "run", "prod" ]

EXPOSE 4000
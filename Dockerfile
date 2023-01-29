#EXAMPLE OF DOCKERFILE
FROM node:16.15.1

# Create app directory
WORKDIR /usr/src/app

#copy
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./

#run npm install
RUN npm install --force --legacy-peer-deps
# RUN npm install craco

#expose
EXPOSE 3000

#build
RUN npm run build

#run
CMD ["npm","run", "startprod"]
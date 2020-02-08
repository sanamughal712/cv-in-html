# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
FROM alpine

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm
RUN npm install http-server -g

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
#RUN  npm install

EXPOSE 8080

ENTRYPOINT ["http-server", "-p","8080"]


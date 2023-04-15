FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install
# RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
#   && tar xzvf docker-17.04.0-ce.tgz \
#   && mv docker/docker /usr/local/bin \
#   && rm -r docker docker-17.04.0-ce.tgz

COPY . .

EXPOSE 4000
CMD [ "node", "index.js","/var/jenkins_home/workspace/test_01@tmp/durable-a75b2203/script.sh" ]

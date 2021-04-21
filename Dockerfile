FROM node:10.19.0

ENV NODE_ENV development

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

RUN apt-get update \
 && apt-get install -y sudo

RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker

# this is where I was running into problems with the other approaches
RUN sudo apt-get update 

EXPOSE 5000

CMD ["sudo", "npm", "run", "server"]
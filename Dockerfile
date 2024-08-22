FROM node:20-slim

# Git installation
RUN apt-get -y update
RUN apt-get -y install git

# Nest CLI installation
RUN npm i -g @nestjs/cli

# Net tools installation
RUN apt-get -y install net-tools

WORKDIR /app

COPY . .

EXPOSE 3000

# RUN npm install
FROM node:22.22.0-slim › zlib/zlib1g@1:1.2.13.dfsg-1
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js

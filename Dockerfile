FROM node:lts-buster
RUN git clone https://github.com/BANDAHAELI/Sarka-MD /root/Sarka-MD
WORKDIR /root/Sarka-MD
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]

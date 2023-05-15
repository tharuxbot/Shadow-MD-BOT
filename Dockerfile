FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/shashikabot/Shadow-MD-BOT /root/shadow-md
WORKDIR /root/shadow-md/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]

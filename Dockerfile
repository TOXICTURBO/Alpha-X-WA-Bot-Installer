FROM node:latest

RUN git clone https://github.com/TOXICTURBO/Alpha-X-WA-Bot /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
RUN git clone https://github.com/TOXICTURBO/Alpha-X-WA-Bot-Installer
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]

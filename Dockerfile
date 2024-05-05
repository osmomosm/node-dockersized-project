FROM node:latest
WoRKDIR /apps
ADD . .
RUN npm install
CMD ["node", "index.js"]

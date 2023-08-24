FROM node:20-slim

ENV APP_PATH /home/node/app

RUN mkdir -p ${APP_PATH}/node_modules
RUN apt update && apt install -y openssl procps

WORKDIR ${APP_PATH}

COPY . .

RUN npm install && npm install @prisma/client && npx prisma generate	

CMD ["npm", "run", "start:dev"]

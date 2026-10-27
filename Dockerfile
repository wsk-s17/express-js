FROM node:24-alpine AS builder

WORKDIR /app

COPY .npmrc .
COPY package*.json .

RUN npm ci

COPY . .

RUN npx prisma generate

ENTRYPOINT ["node", "src/index.js"]

FROM node:lts-alpine
WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY . .

ENV NODE_ENV=production
ENV DB_HOST=competitor_db

CMD ["npm", "start"]
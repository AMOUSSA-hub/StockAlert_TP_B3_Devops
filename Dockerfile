FROM node:18-alpine
RUN apk update && apk upgrade --no-cache && apk add --no-cache "openssl>=3.3.6-r0" || true
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY app.js .
EXPOSE 3000
CMD ["node", "app.js"]

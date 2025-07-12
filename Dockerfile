FROM node:18-bookworm

RUN apt update && \
  apt install npm -y

WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]
FROM node:18-bookworm

RUN npm install -g yarn

WORKDIR /app
COPY . .

RUN yarn install
RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]
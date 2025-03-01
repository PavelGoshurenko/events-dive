FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo11
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net1
ENV MONGODB_USERNAME maximilian1
ENV MONGODB_PASSWORD eI3R3UfNlJgWJe171

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
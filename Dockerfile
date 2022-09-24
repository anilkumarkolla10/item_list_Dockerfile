FROM node:12.18.1
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
ENV value="mongodb://mongo:7017" \
    name="MONGO_URL"
EXPOSE 3000
CMD ["npm", "start"]

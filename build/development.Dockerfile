FROM node:14-slim

COPY ["package.json", "package-lock.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install
# También podemos usar: RUN npm install --only-production


COPY [".", "/usr/src/"]

# RUN npm install --only-development

EXPOSE 3000

CMD ["npx", "nodemon", "index.js"]

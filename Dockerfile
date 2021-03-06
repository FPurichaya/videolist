FROM node:alpine

RUN mkdir -p /app/videos

#WORKDIR will point all other command to this directory as default
WORKDIR /app/videos

#. means current directory(WORKDIR)
COPY package.json .
RUN yarn install

#COPY . . = copy everything
#first . means source folder, second . means destination
COPY . .

EXPOSE 3000

CMD ["yarn", "start"]

FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
 
RUN git clone https://github.com/TimashaBuddilax/DarkQueen

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "."]

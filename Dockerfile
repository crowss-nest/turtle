FROM --platform=linux/amd64 node:16-alpine

#작업 디랙토리 생성 및 지정
WORKDIR /app

#앱 의존성 
COPY package*.json ./ 

RUN npm install 

COPY . .

EXPOSE 3000

CMD ["npm","run","start"]

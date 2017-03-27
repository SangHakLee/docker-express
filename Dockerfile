FROM node:6.10.0

MAINTAINER SangHakLee <code.ryan.lee@gmail.com>

# /home/dev 를 작업 디렉토리로 설정
RUN mkdir -p /home/dev

RUN npm install -g pm2

WORKDIR /home/dev

# 소스코드 가져오기 url 부분에 실제 코드 주소 넣기
RUN git clone https://github.com/SangHakLee/docker-express.git

# config/ 아래 파일은 버전관리 x
COPY config/ home/dev/docker-express/config/

WORKDIR /home/dev/docker-express

# development: 개발 환경 production: 운영환경
ENV NODE_ENV development

RUN npm install

EXPOSE 3000

#pm2로 실행
CMD ["pm2-docker", "bin/www"]

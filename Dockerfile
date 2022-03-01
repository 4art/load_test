FROM alpine

RUN apk --no-cache add curl
WORKDIR /usr/src/app
COPY . .

RUN chmod +x /usr/src/app/curlAttack.sh

ENTRYPOINT ["sh", "./curlAttack.sh", "https://<url>"]

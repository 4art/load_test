#!/bin/bash
git clone https://github.com/Arriven/db1000n.git
cd db1000n
docker build -t rus_ddos .

docker service create --name rus_ddos-serv --detach=false rus_ddos

docker service ls
docker service scale rus_ddos-serv=15

docker service ls

cd ..
docker service logs -f rus_ddos-serv

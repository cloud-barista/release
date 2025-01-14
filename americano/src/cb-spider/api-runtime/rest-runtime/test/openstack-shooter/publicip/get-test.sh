#!/bin/bash
source ../setup.env

for NAME in "${CONNECT_NAMES[@]}"
do
        ID=`curl -sX GET http://$RESTSERVER:1024/publicip?connection_name=${NAME} |json_pp |grep "\"Name\" :" |awk '{print $3}' | head -n 1 |sed 's/"//g' |sed 's/,//g'`
        curl -sX GET http://$RESTSERVER:1024/publicip/${ID}?connection_name=${NAME} |json_pp &
done


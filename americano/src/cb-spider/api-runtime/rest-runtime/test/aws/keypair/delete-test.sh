RESTSERVER=localhost

#정상 동작
curl -X DELETE http://$RESTSERVER:1024/keypair/cbkeypair01?connection_name=aws-config01 |json_pp
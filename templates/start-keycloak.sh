#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}

export PROXY_ADDRESS_FORWARDING="true"

cd $HOME/keycloak
./bin/kc.sh start --http-port {{keycloak_http_port}} --http-host 127.0.0.1 --proxy edge &
echo $! >$HOME/var/run/keycloak.pid
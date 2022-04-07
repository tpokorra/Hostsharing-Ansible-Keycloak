#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}

export PROXY_ADDRESS_FORWARDING=true
export KEYCLOAK_FRONTEND_URL="https://{{domain}}/auth"


cd $HOME/keycloak
./bin/kc.sh start --http-port {{keycloak_http_port}} &
echo $! >$HOME/var/run/keycloak.pid
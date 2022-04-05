#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
kill $( cat $HOME/var/run/keycloak.pid )
#!/usr/bin/env bash

PORT=${1:-8888}
USERNAME=${2:-"admin"}

curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/user/get -d "{
  \"id\": \"${USERNAME}\"
}"


#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=$([ ! -z "${2}" ] && echo -n "/${2}" || echo -n)

curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X DELETE "http://localhost:${PORT}/node_dt_update${INDEX_NAME}"


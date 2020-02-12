#!/usr/bin/env bash

PORT=${1:-8888}
UUID=$([ ! -z "${2}" ] && echo -n "/${2}" || echo -n)

curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X GET "http://localhost:${PORT}/cluster_node${UUID}"


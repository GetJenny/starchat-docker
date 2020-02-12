#!/usr/bin/env bash

PORT=${1:-8443}
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X PUT "http://localhost:${PORT}/system_index_management"


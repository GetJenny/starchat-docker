#!/usr/bin/env bash

PORT=${1:-8888}
PASSWORD=${2:-"plain text password"}
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/user/generate -d "{
        \"id\": \"test_user\",
        \"password\": \"${PASSWORD}\",
	\"permissions\": {
		\"index_getjenny_english_0\": [\"read\"],
		\"index_1\": [\"read\", \"write\"]
	}
}"


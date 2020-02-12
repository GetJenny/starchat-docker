#!/usr/bin/env bash

PORT=${1:-8888}

curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
 -H "Content-Type: application/json" -X PUT http://localhost:${PORT}/user -d '{
	"id": "test_user",
	"permissions": {
		"index_getjenny_english_0": ["read"]
	}
}'


#!/usr/bin/env bash

PORT=${1:-8888}
curl -v -H "Content-Type: application/json" -X GET "http://localhost:${PORT}/"


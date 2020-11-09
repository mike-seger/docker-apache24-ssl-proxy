#!/bin/bash

protocol=$1
host=$2
port=$3
path=$4
echo $host:$port

curl --include \
     --no-buffer \
     --header "Connection: Upgrade" \
     --header "Upgrade: websocket" \
     --header "Host: $host" \
     --header "Origin: protocol://$host:$port/$path" \
     --header "Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==" \
     --header "Sec-WebSocket-Version: 13" \
     $protocol://$host:$port/$path
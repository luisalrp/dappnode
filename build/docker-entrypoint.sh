#!/bin/bash
set -eo pipefail
shopt -s nullglob

file_env() {
	local var="$1"
	local fileVar="${var}_FILE"
	local def="${2:-}"
	if [ "${!var:-}" ] && [ "${!fileVar:-}" ]; then
		echo >&2 "error: both $var and $fileVar are set (but are exclusive)"
		exit 1
	fi
	local val="$def"
	if [ "${!var:-}" ]; then
		val="${!var}"
	elif [ "${!fileVar:-}" ]; then
		val="$(< "${!fileVar}")"
	fi
	export "$var"="$val"
	unset "$fileVar"
}

# Getting environment vars
file_env 'INXT'
file_env 'SIZE'
file_env 'RPC_PORT'
file_env 'RPC_ADDRESS'

# Creating node when xcore configs folder is empty
[ ! -d /root/.xcore/configs/ ] && xcore create \
    --inxt $INXT \
    --size $SIZE \
    --rpcport $RPC_PORT \
    --rpcaddress $RPC_ADDRESS \
    --noedit

# Starting daemon
/bin/sh /root/start.sh

while true; do xcore status && sleep 60; done
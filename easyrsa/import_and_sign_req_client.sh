#!/bin/bash

COMMON_NAME=$1

if [ -z "$COMMON_NAME" ]; then
  echo "No common name specified."
  exit 1
fi

cd /etc/easyrsa/

./easyrsa import-req /clt_pki/$COMMON_NAME.req $COMMON_NAME
./easyrsa sign-req client $COMMON_NAME
#!/bin/bash

cd /etc/easyrsa/

echo "easyrsa_ca" | ./easyrsa build-ca no-pass
./easyrsa gen-dh

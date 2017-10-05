#!/bin/bash

cd ./easyrsa_base/
docker build -t img_tkdovpn2_easyrsa_base .
cd ../easyrsa/
docker build -t img_tkdovpn2_easyrsa .
cd ../openvpn_base/
docker build -t img_tkdovpn2_openvpn_base .
cd ../server/
docker build -t img_tkdovpn2_server .
cd ../client/
docker build -t img_tkdovpn2_client .
cd ../

docker network create net_tkdovpn2_bridge

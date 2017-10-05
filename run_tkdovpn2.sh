#!/bin/bash

docker run -d --name openvpn_svr --network net_tkdovpn2_bridge \
  --mount src=vol_tkdovpn2_svr_pki,dst=/etc/easyrsa/pki \
  --cap-add=NET_ADMIN --device=/dev/net/tun -p 1194:1194/udp \
  --entrypoint openvpn \
  img_tkdovpn2_server /etc/openvpn/server.conf

docker run -d --name openvpn_clt1 --network net_tkdovpn2_bridge \
  --mount src=vol_tkdovpn2_clt_pki,dst=/etc/easyrsa/pki \
  --cap-add=NET_ADMIN --device=/dev/net/tun \
  --entrypoint openvpn \
  img_tkdovpn1_client /etc/openvpn/client.conf

#!/bin/bash

docker run -d --name openvpn_svr --network net_tkdovpn2_bridge \
  --mount src=vol_tkdovpn2_svr_pki,dst=/etc/easyrsa/pki \
  --cap-add=NET_ADMIN --device=/dev/net/tun -p 1194:1194/udp \
  --entrypoint "openvpn /etc/openvpn/server.conf" \
  img_tkdovpn2_server

# docker run -d --name openvpn_clt1 --network net_tkdovpn2_bridge \
  # --mount src=vol_tkdovpn2_clt_pki,dst=/etc/easyrsa/pki \
  # --cap-add=NET_ADMIN --device=/dev/net/tun \
  # --entrypoint "openvpn /etc/openvpn/client.conf" \
  # img_tkdovpn1_client

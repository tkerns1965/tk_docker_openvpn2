#!/bin/bash

docker run --mount src=vol_tkdovpn2_ca_pki,dst=/etc/easyrsa/pki --rm \
  img_tkdovpn2_easyrsa ./build_ca_and_gen_dh.sh
docker run --mount src=vol_tkdovpn2_svr_pki,dst=/etc/easyrsa/pki --rm \
  img_tkdovpn2_server ./gen_req.sh openvpn_svr
docker run --mount src=vol_tkdovpn2_clt_pki,dst=/etc/easyrsa/pki --rm \
  img_tkdovpn2_client ./gen_req.sh openvpn_clt1

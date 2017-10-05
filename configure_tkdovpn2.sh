#!/bin/bash

docker run --mount src=vol_tkdovpn2_ca_pki,dst=
docker run --mount src=vol_ca_pki,dst=/etc/easyrsa/pki --rm \
  img_tkdovpn1_easyrsa ./build_ca.exp $COMMON_NAME $PASS_PHRASE

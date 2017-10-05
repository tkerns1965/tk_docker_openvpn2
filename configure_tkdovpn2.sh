#!/bin/bash

docker run --mount src=vol_tkdovpn2_ca_pki,dst=/etc/easyrsa/pki --rm \
  img_tkdovpn2_easyrsa ./build_ca_and_gen_dh.sh

FROM img_tkdovpn2_openvpn_base:latest

COPY run_server.exp ./
COPY server.conf ./etc/openvpn/

RUN chmod u+x run_server.exp \
        && ln -s /etc/easyrsa/ /etc/openvpn/

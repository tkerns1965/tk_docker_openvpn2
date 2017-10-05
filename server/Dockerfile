FROM img_tkdovpn2_openvpn_base:latest

COPY server.conf /etc/openvpn/

RUN cd /etc/easyrsa/ \
        && ./easyrsa gen-req openvpn_svr nopass

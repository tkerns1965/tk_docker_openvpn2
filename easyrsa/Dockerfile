FROM img_tkdovpn2_easyrsa_base:latest

RUN cd /etc/easyrsa/ \
        && ./easyrsa build-ca nopass \
        && ./easyrsa gen-dh

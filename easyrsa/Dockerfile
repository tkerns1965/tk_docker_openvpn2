FROM img_tkdovpn2_easyrsa_base:latest

RUN cd /etc/easyrsa/ \
        && echo "easyrsa_ca" | ./easyrsa build-ca nopass \
        && ./easyrsa gen-dh

FROM img_tkdovpn2_easyrsa_base:latest

COPY gen_req.sh /

RUN wget -O - https://swupdate.openvpn.net/repos/repo-public.gpg | apt-key add - \
        && echo "deb http://build.openvpn.net/debian/openvpn/release/2.4 xenial main" \
                > /etc/apt/sources.list.d/openvpn.list \
        && apt update \
        && apt install -y openvpn \
        && apt install -y openssh-client \
        && apt install -y iputils-ping \
        && ln -s /etc/easyrsa/ /etc/openvpn/ \
        && chmod u+x gen_req.sh

# Dockerfile: strongswan
# IKEv2 VPN Gateway using strongSwan.

FROM		alpine:latest

RUN         apk --update --no-cache add strongswan

EXPOSE      500/udp \
            4500/udp

ENTRYPOINT  [ "/usr/sbin/ipsec" ]
CMD         [ "start", "--nofork" ]

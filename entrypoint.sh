#!/bin/sh

#if [ ! -e /etc/dropbear/dropbear_ecdsa_host_key ]; then
#  /usr/bin/dropbearkey -t ecdsa -f /etc/dropbear/dropbear_ecdsa_host_key
#fi

echo "shell:${PASSWD:-shell}" |chpasswd

/usr/sbin/dropbear -w -R -F -E $@

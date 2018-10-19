#!/bin/sh

echo "shell:${PASSWD:-shell}" |chpasswd

/usr/sbin/dropbear -w -R -F -E $@

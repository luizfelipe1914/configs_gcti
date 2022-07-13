#!/bin/bash

PROXY="/etc/apt/apt.conf.d/"

echo "Acquire {" >> $PROXY
echo '  HTTP::proxy "http://proxy.parnamirim.rn.gov.br:3128" ' >> $PROXY
echo '  HTTPS::proxy "http://proxy.parnamirim.rn.gov.br:3128" ' >> $PROXY
echo "}" >> $PROXY
echo 'export HTTP_PROXY="http://proxy.parnamirim.rn.gov.br:3128" ' >> /etc/profile
echo 'export HTTPS_PROXY="$HTTP_PROXY"' >> /etc/profile
echo 'export FTP_PROXY="$HTTP_PROXY"' >> /etc/profile

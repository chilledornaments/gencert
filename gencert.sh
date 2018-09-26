#!/bin/bash
read -p "Enter Server Name (i.e. elk.imm.com): " servername
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=CO/L=Boulder/O=IT/CN=${servername}" \
    -keyout "${servername}".key  -out "${servername}".cert

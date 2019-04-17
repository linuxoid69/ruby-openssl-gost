#!/bin/sh

CONFIG="/usr/local/ssl/openssl.cnf"
cat <<EOF >> /usr/local/ssl/openssl.cnf

[gostengy_section]
engine_id = gostengy
dynamic_path = /opt/cprocsp/cp-openssl-1.1.0/lib/amd64/engines/libgostengy.so
default_algorithms = CIPHERS, DIGESTS, PKEY, PKEY_CRYPTO, PKEY_ASN1

EOF

LINE_SECTION=$(grep -n '\[engine_section\]' $CONFIG | cut -f 1 -d ':')

sed -i "${LINE_SECTION}a gostengy_section" $CONFIG

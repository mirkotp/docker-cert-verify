#!/bin/sh

# Convert certificates and add to trusted certs
for f in /CA/*; do 
    openssl x509 -text -inform DER -in ${f} >> /etc/ssl/certs/ca-certificates.crt
done;

# Convert certificates
for f in /Untrusted/*; 
    do
    echo "";
    openssl x509 -text -inform DER -in ${f} -out /tmp/$(basename ${f});
    openssl verify /tmp/$(basename ${f})
done;

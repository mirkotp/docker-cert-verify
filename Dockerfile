FROM alpine:3.14
RUN apk add openssl=1.1.1t-r2

RUN mkdir /CA
RUN mkdir /Untrusted
COPY ./entry.sh /entry.sh

# COPY ./CA /CA
# WORKDIR /CA
# RUN for f in *; do openssl x509 -text -inform DER -in ${f} -out ${f}; done;
# RUN cat /CA/* >> /etc/ssl/certs/ca-certificates.crt
 
# COPY ./Untrusted /Untrusted
# WORKDIR /Untrusted
# RUN for f in *; do openssl x509 -text -inform DER -in ${f} -out ${f}; done;

ENTRYPOINT sh /entry.sh

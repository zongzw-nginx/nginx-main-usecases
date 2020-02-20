#!/bin/bash 

cdir=`cd $(dirname $0); pwd`

(
    cd $cdir
    openssl genrsa -out server.key 2048
    openssl req -new -key server.key -out server.csr
    openssl x509 -req -in server.csr -signkey server.key -out server.crt
    
)

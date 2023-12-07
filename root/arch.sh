#!/bin/bash

ARCH=$(uname -m)

gcc /src/binary.c -o /opt/www/binary -lseccomp

if [ "$ARCH" == "x86_64" ]; then
    cp /opt/www/binary / && \
    cp /lib/ld-musl-x86_64.so.1 / && \
    cp /usr/lib/libseccomp.so.* / && \
    tar cf /opt/www/support.tar  /ld-musl-x86_64.so.1 /libseccomp.so.*;
elif [ "$ARCH" == "aarch64" ]; then
    cp /opt/www/binary / && \
    cp /lib/ld-musl-aarch64.so.1 / && \
    cp /usr/lib/libseccomp.so.* / && \
    tar cf /opt/www/support.tar  /ld-musl-aarch64.so.1 /libseccomp.so.*;
fi

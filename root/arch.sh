#!/bin/bash

ARCH=$(uname -m)

if [ "$ARCH" == "x86_64" ]; then
    gcc /src/binary.c -o /web/binary -lseccomp
    cp /web/binary / && \
    cp /lib/ld-musl-x86_64.so.1 / && \
    cp /usr/lib/libseccomp.so.2.5.2 / && \
    tar cf /web/support.tar  /ld-musl-x86_64.so.1 /libseccomp.so.2.5.2;
  elif [ "$ARCH" == "aarch64" ]; then
    gcc /src/binary.c -o /web/binary -lseccomp
    cp /web/binary / && \
    cp /lib/ld-musl-aarch64.so.1 / && \
    cp /usr/lib/libseccomp.so.2.5.2 / && \
    tar cf /web/support.tar  /ld-musl-aarch64.so.1 /libseccomp.so.2.5.2;
  fi

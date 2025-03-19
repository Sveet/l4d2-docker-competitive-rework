#!/bin/bash
microdnf -y install SDL2.i686 \
    libcurl.i686 \
    glibc-langpack-en \
    tar \
    telnet \
    gdb
microdnf -y update
microdnf clean all

useradd steam

mkdir             /addons /cfg /motd /tmp/dumps
chown steam:steam /addons /cfg /motd /tmp/dumps
#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "must run as root"
        exit
fi

modprobe v4l2loopback exclusive_caps=1 max_buffer=2
printf "[main]\ndhcp=dhclient" > /etc/NetworkManager/conf.d/dhcp-client.conf

# adding v4l2loopback module on startup
printf "dslr-webcam" > /etc/modules
printf "alias dslr-webam v4l2loopback\noptions v4l2loopback exclusive_caps=1 max-buffers=2" > /etc/modprobe.d/dslr-webcam.conf

#!/bin/sh

cd $(dirname $0)
LANG=C date        > current_ipaddr.txt
curl inet-ip.info >> current_ipaddr.txt


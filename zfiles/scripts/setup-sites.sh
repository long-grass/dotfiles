#!/bin/bash
ip=$(ifconfig | grep en0 -A 2 | tail -1 | awk -F' ' '{print $2}')
echo $ip
echo "nameserver $ip" > /etc/resolver/test
echo "address=/.test/$ip" > /usr/local/etc/dnsmasq.d/development.conf
sudo brew services restart dnsmasq

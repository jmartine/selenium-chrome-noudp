#!/bin/bash

iptables -A INPUT -p udp --sport 100:65535 --dport 100:65535 -j DROP
iptables -A OUTPUT -p udp --sport 100:65535 --dport 100:65535 -j DROP

su seluser /opt/bin/entry_point.sh

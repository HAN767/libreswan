/testing/guestbin/swan-prep
echo "192.0.2.252/30" >> /etc/ipsec.d/policies/clear
echo "192.1.3.252/30" >> /etc/ipsec.d/policies/clear
ip route del default
ip addr del 192.1.33.222/24 dev eth0 2>/dev/null
sleep 2
ip addr add 192.1.3.209/24 dev eth0 2>/dev/null
ip route add default via 192.1.3.254
ipsec start
/testing/pluto/bin/wait-until-pluto-started
ipsec auto --add road-eastnet
echo "initdone"

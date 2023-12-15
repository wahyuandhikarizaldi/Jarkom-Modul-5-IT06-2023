echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt install isc-dhcp-server -y
apt install netcat

cat << EOF > /etc/dhcp/dhcpd.conf
subnet 192.236.14.128 netmask 255.255.255.252 {
   option routers 192.236.14.129;
}

subnet 192.236.14.132 netmask 255.255.255.252 {
  
}

subnet 192.236.14.136 netmask 255.255.255.252 {
   option routers 192.236.14.137;
}

subnet 192.236.14.140 netmask 255.255.255.252 {
  
}

subnet 192.236.14.144 netmask 255.255.255.252 {
   option routers 192.236.14.145;
}

subnet 192.236.14.148 netmask 255.255.255.252 {
    option routers 192.236.14.150;
}

subnet 192.236.12.0 netmask 255.255.254.0 {
    range 192.236.12.2 192.236.13.1;
    option routers 192.236.12.1;
    option broadcast-address 192.236.13.255;
    option domain-name-servers 192.236.14.134;
    default-lease-time 720;
    max-lease-time 5760;
}

subnet 192.236.14.0 netmask 255.255.255.128 {
    range 192.236.14.3 192.236.14.66;
    option routers 192.236.14.1;
    option broadcast-address  192.236.14.127;
    option domain-name-servers 192.236.14.134;
    default-lease-time 720;
    max-lease-time 5760;
}

subnet 192.236.0.0 netmask 255.255.248.0 {
    range 192.236.0.2 192.236.4.4;
    option routers 192.236.0.1;
    option broadcast-address  192.236.7.255;
    option domain-name-servers 192.236.14.134;
    default-lease-time 720;
    max-lease-time 5760;
}

subnet 192.236.8.0 netmask 255.255.252.0 {
    range 192.236.8.3 192.236.10.5;
    option routers 192.236.8.1;
    option broadcast-address  192.236.11.255;
    option domain-name-servers 192.236.14.134;
    default-lease-time 720;
    max-lease-time 5760;
}
EOF

service isc-dhcp-server start

iptables -F
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP

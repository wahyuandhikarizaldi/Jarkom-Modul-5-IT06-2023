echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt install bind9 -y
apt install netcat

iptables -F
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP

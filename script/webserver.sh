echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update
apt install netcat

iptables -F
iptables -A INPUT -p udp -j DROP
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT

iptables -A INPUT -p tcp --dport 22 -m iprange --src-range 192.236.8.3-192.236.10.5 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP

iptables -A INPUT -p tcp --dport 80 -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j DROP

iptables -A INPUT -p tcp -j DROP
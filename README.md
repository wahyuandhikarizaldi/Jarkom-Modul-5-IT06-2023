# Jarkom-Modul-5-IT06-2023
**Modul 5 Jaringan Komputer 2023**

## Kelompok IT06
| Nama | NRP |
|---------------------------|------------|
|Wahyu Andhika Rizaldi | 5027211003 |
|Sedtia Prakoso Budi Tirto Arto | 5027211014 |

## Pembagian IP
https://docs.google.com/spreadsheets/d/1z6onCMgPDAuXaBJfMbKXKizscuf2AqEd0tOuczpQQlU/edit?usp=sharing

## Topologi
Tentukan subnet dari topologi, dengan metode VLSM.
![image](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/a40b649e-802b-4e01-a224-74881f2f1287)

## Rute dan Subnet Mask
Tentukan subnet mask dari masing-masing subnet, dengan jumlah host yang dibutuhkan yang tercamtum di topologi.
![image](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/739dd4df-58df-4e91-93a5-ab9f5bed2b5d)

## Konfigurasi IP
Buat perhitungan dari subnet mask dari masing-masing subnet untuk menentukan pembagian konfigurasi IP.
![image](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/d585ec6f-e875-4130-b490-0aec90749353)

## VLSM Tree
Berdasarkan konfigurasi IP yang sudah didapatkan, gambarkan tree VLSM nya.
![image](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/8d0cc5fd-12e0-4a30-ba53-18a3aeb83c79)

## Configuration
- **Aura**
```
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 192.236.14.149
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.236.14.145
	netmask 255.255.255.252

up route add -net 192.236.0.0 netmask 255.255.248.0 gw 192.236.14.150
up route add -net 192.236.8.0 netmask 255.255.252.0 gw 192.236.14.150
up route add -net 192.236.14.136 netmask 255.255.255.252 gw 192.236.14.146
up route add -net 192.236.14.140 netmask 255.255.255.252 gw 192.236.14.146
up route add -net 192.236.12.0 netmask 255.255.255.252 gw 192.236.14.146
up route add -net 192.236.14.0 netmask 255.255.255.252 gw 192.236.14.146
up route add -net 192.236.14.132 netmask 255.255.255.252 gw 192.236.14.146
up route add -net 192.236.14.128 netmask 255.255.255.252 gw 192.236.14.146
```
- **Heiter**
```
auto eth0
iface eth0 inet static
	address 192.236.14.150
	netmask 255.255.255.252
  gateway 192.236.14.149

auto eth1
iface eth1 inet static
	address 192.236.0.1
	netmask 255.255.248.0

auto eth2
iface eth2 inet static
	address 192.236.8.1
	netmask 255.255.252.0

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.236.14.149
```
- **TurkRegion**
```
iface eth0 inet static
	address 192.236.0.2
	netmask 255.255.248.0
  gateway 192.236.0.1
```
- **Sein**
```
auto eth0
iface eth0 inet static
	address 192.236.8.2
	netmask 255.255.252.0
  gateway 192.236.8.1
```
- **GroberForest**
```
auto eth0
iface eth0 inet static
	address 192.236.8.3
	netmask 255.255.252.0
  gateway 192.236.8.1
```
- **Frieren**
```
auto eth0
iface eth0 inet static
	address 192.236.14.146
	netmask 255.255.255.252
  gateway 192.236.14.145

auto eth1
iface eth1 inet static
	address 192.236.14.141
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.236.14.137
	netmask 255.255.255.252

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.236.14.145
up route add -net 192.236.12.0 netmask 255.255.254.0 gw 192.236.14.138
up route add -net 192.236.14.0 netmask 255.255.255.128 gw 192.236.14.138
up route add -net 192.236.14.132 netmask 255.255.255.252 gw 192.236.14.138
up route add -net 192.236.14.128 netmask 255.255.255.252 gw 192.236.14.138
```
- **Stark**
```
auto eth0
iface eth0 inet static
	address 192.236.14.142
	netmask 255.255.255.252
  gateway 192.236.14.141
```
- **Himmel**
```
auto eth0
iface eth0 inet static
	address 192.236.14.138
	netmask 255.255.255.252
  gateway 192.236.14.137

auto eth1
iface eth1 inet static
	address 192.236.12.1
	netmask 255.255.254.0

auto eth2
iface eth2 inet static
	address 192.236.14.1
	netmask 255.255.255.128

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.236.14.137
up route add -net 192.236.14.128 netmask 255.255.255.252 gw 192.236.14.2
up route add -net 192.236.14.132 netmask 255.255.255.252 gw 192.236.14.2
```
- **LaubHils**
```
auto eth0
iface eth0 inet static
	address 192.236.12.2
	netmask 255.255.254.0
  gateway 192.236.12.1
```
- **SchwerMountain**
```
auto eth0
iface eth0 inet static
	address 192.236.14.3
	netmask 255.255.255.128
  gateway 192.236.14.1
```
- **Fern**
```
auto eth0
iface eth0 inet static
	address 192.236.14.2
	netmask 255.255.255.128
  gateway 192.236.14.1

auto eth1
iface eth1 inet static
	address 192.236.14.133
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.236.14.129
	netmask 255.255.255.252

up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.236.14.1
```
- **Ritcher**
```
auto eth0
iface eth0 inet static
	address 192.236.14.134
	netmask 255.255.255.252
    gateway 192.236.14.133
```
- **Revolte**
```
auto eth0
iface eth0 inet static
	address 192.236.14.130
	netmask 255.255.255.252
  gateway 192.236.14.129
```

### Setup DHCP
- **DHCP Server**
```
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
```
- **DHCP Relay**
```
cat << EOF > /etc/default/isc-dhcp-relay
# Defaults for isc-dhcp-relay initscript
# sourced by /etc/init.d/isc-dhcp-relay
# installed at /etc/default/isc-dhcp-relay by the maintainer scripts

#
# This is a POSIX shell fragment
#

# What servers should the DHCP relay forward requests to?
SERVERS="192.236.14.130"

# On what interfaces should the DHCP relay (dhrelay) serve DHCP requests?
INTERFACES="eth0 eth1 eth2"

# Additional options that are passed to the DHCP relay daemon?
OPTIONS=""
EOF

service isc-dhcp-relay start 
```
## Soal 1 
>Agar topologi yang kalian buat dapat mengakses keluar, kalian diminta untuk mengkonfigurasi Aura menggunakan iptables, tetapi tidak ingin menggunakan MASQUERADE.

Konfigurasi iptables di Aura

**Aura**
```
ETH0_IP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source $ETH0_IP
```

### Result
![WhatsApp Image 2023-12-15 at 18 58 10_e5589f43](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/d7995e28-f703-401e-ba10-c69a11aa014b)

## Soal 2
>Kalian diminta untuk melakukan drop semua TCP dan UDP kecuali port 8080 pada TCP.

Konfigurasi iptables di WebServer agar tidak dapat diakses melalui TCP dan UDP kecuali TCP port 8080.

**WebServer**
```
iptables -F
iptables -A INPUT -p udp -j DROP
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
```

### Result
![WhatsApp Image 2023-12-15 at 19 00 59_0314d9fd](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/d8abd1a5-bb0e-4ed2-99c7-530474295cb6)
![WhatsApp Image 2023-12-15 at 19 01 17_39fbb997](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/cda0a0dc-7f56-4e3f-b21f-4c699cf60983)

Dari hasil diatas, dapat dilihat bahwa apabila diakses melalui port 8080 maka pesan terkirim yang berarti server dapat diakses. Tetapi apabila melalui port 8000 pesan tidak terkirim yang berarti server tidak terakses.

## Soal 3
>Kepala Suku North Area meminta kalian untuk membatasi DHCP dan DNS Server hanya dapat dilakukan ping oleh maksimal 3 device secara bersamaan, selebihnya akan di drop.

Konfigurasi iptables di DHCP dan DNS Server agar hanya dapat dilakukan ping oleh maksimal 3 device.

**DHCP & DNS Server**
```
iptables -F
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP
```

### Result
![WhatsApp Image 2023-12-15 at 19 08 38_22241dc7](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/98f2ab9f-94ea-40f6-bb24-9959cbd131cd)

Dari hasil diatas, dapat dilihat bahwa client ke-4 tidak dapat melakukan ping ke Server.

## Soal 4
>Lakukan pembatasan sehingga koneksi SSH pada Web Server hanya dapat dilakukan oleh masyarakat yang berada pada GrobeForest.

Konfigurasi iptables di WebServer agar hanya dapat diakses oleh rentang IP GrobeForest.

Karena GrobeForest memiliki 512 host dan dimulai dari 192.236.8.3, maka rentang IP nya hingga 192.236.10.5.

**WebServer**
```
iptables -A INPUT -p tcp --dport 22 -m iprange --src-range 192.236.8.3-192.236.10.5 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
```

### Result
![WhatsApp Image 2023-12-15 at 19 11 01_c3ba5208](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/faa9f1c5-f66f-4dc9-b9df-842a67cc5040)

Dari Hasil diatas, dapat dilihat apabila diakses melalui GrobeForest akan terlihat port 22. Tetapi tidak terlihat apabila diakses dari selain GrobeForest.

## Soal 5
>Selain itu, akses menuju WebServer hanya diperbolehkan saat jam kerja yaitu Senin-Jumat pada pukul 08.00-16.00.

Konfigurasi iptables di WebServer agar hanya dapat diakses saat jam kerja yaitu hari Senin-Jumat pada pukul 08.00-16.00.

**WebServer**
```
iptables -A INPUT -p tcp --dport 80 -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j DROP
```

### Result
![WhatsApp Image 2023-12-15 at 19 20 55_1cb88574](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/a7bccac1-37c2-49af-b800-10fbdeeaf834)
![WhatsApp Image 2023-12-15 at 19 31 05_92a415a0](https://github.com/wahyuandhikarizaldi/Jarkom-Modul-5-IT06-2023/assets/113814423/7a113a16-6448-46d0-81a7-178cc168bec5)

Dari hasil diatas, dapat dilihat apabila WebServer diakses pada jam kerja, maka pesan terkirim yang berarti Server dapat diakses. Tetapi apabila diakses diluar jam kerja, pesan tidak terkirim yang berarti Server tidak terakses.

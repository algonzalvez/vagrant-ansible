$ORIGIN .
$TTL 86400      ; 1 day
algonzalvez.com     IN SOA dns.algonzalvez.com. postmaster.algonzalvez.com. (
                                1          ; serial
                                21600      ; refresh (6 hours)
                                3600       ; retry (1 hour)
                                604800     ; expire (1 week)
                                21600      ; minimum (6 hours)
                                )
                        NS      dns.algonzalvez.com.
$ORIGIN algonzalvez.com.
nodo1		A	192.168.10.101
nodo2		A	192.168.10.102
dns		A	192.168.10.100
www		A	192.168.10.101
www		A	192.168.10.102

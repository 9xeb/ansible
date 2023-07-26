[Interface]
Address = 192.168.6.254/32
PrivateKey = {{ wg_privkey }}

[Peer]
PublicKey = {{ wg_peer_pubkey }} 
PresharedKey = {{ wg_preshared_key }}
AllowedIPs = {{ wg_allowed_ips }} 
Endpoint = leandojo.duckdns.org:62012
PersistentKeepalive = 30

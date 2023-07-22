[Unit]
Description=AutoSSH tunneling NFS to local port (%i)
#After=network-online.target
After=multi-user.target docker.service

[Service]
Type=simple
Environment="AUTOSSH_GATETIME=0"
ExecStart=/usr/bin/autossh -M 0 -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" -NL {{ ssh_tunneling_local_port }}:localhost:2049 %i
Restart=on-failure
RestartSec=1

[Install]
WantedBy=multi-user.target

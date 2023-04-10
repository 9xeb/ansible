# Ansible playbooks and roles
Welcome to my ansible repo. It contains roles and playbooks I have been developing for orchestrating my own homelab.
Key features:
 - multi host docker volumes via NFS through SSH tunnels
 - group hosts by their purpose in the lab
 - generic enough for me when it comes to pushing all kinds of compose stacks (see my purplesec repo for a non-trivial example)

push-compose.yml applies volumes and containers across your cluster, use it every time you're working with volumes or containers

[FIXME Mongorita breaks when volume is deleted but directory isn't]

Since volumes may hold delicate data, their addition is part of the normal workflow; however, their destruction/regeneration is handled via separate playbooks that must be called explicitly by the user.

These ansible playbooks are made for pushing an unchanging working configuration. Replacing and removing volumes after pushing might break stuff.
For testing and debugging, just log into your host and start/stop/edit compose.

# run command with inventory and vault
# you can reference variables in inventory with '{{ var_name }}'
ansible-playbook -i path/to/inventory -b PLAYBOOK.yml -e@path/to/vault --ask-vault-pass

# TO-DO
- Remote docker volumes backup via ansible
- Docker image update via ansible
- Push docker compose environment and start/stop/update it

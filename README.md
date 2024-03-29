# Ansible playbooks and roles
Welcome to my ansible repo. It contains roles and playbooks I have been developing for orchestrating my own homelab.
Key features:
 - multi host docker volumes via NFS through SSH tunnels
 - group hosts by their purpose in the lab
 - generic enough for me when it comes to pushing all kinds of compose stacks (see my purplesec repo for a non-trivial example)

push-compose.yml applies volumes and containers across your cluster, use it every time you're working with volumes or containers

Since volumes may hold delicate data, their addition is part of the normal workflow; however, their destruction/regeneration is handled via separate playbooks that must be called explicitly by the user.

These ansible playbooks are made for pushing an unchanging working configuration. Replacing and removing volumes after pushing might break stuff.
For testing and debugging, just log into your host and start/stop/edit compose like you would do without ansible.

## Example run command
```
ansible-playbook -i path/to/inventory -b PLAYBOOK.yml -e@path/to/vault --ask-vault-pass
```

# Current playbook chains
 - push-compose and push-stack depend on push-sshnfs
 - push-security depends on push-sshnf, push-crowdsec and push-falco, and it is a special case of push-stack
 - push-backups is yet to be well defined

# Future additions
- Move all these below to issues
- Docker swarm managers and workers setup, and pushing configurations
- Remote docker volumes backup
- Docker image update via ansible
- Push docker compose environment and start/stop/update it
- Playbook to 'timedatectl set-timezone UTC'
- Playbook for stopping all stacks that were started with push-compose and push-swarm
- Playbook for updating all images present on a docker host that were run with push-compose or push-swarm (known location for docker-compose files)
- Playbook for backing up volumes to borg across a docker cluster
- Move to nfs-ganesha and high availability
- Configurations for setting up wireguard tunnels anywhere

[FIXME: Mongorita breaks when volume is deleted but directory isn't]

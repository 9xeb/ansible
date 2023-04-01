# ansible
Ansible roles and playbooks

# run command with inventory and vault
# you can reference variables in inventory with '{{ var_name }}'
ansible-playbook -i path/to/inventory -b PLAYBOOK.yml -e@path/to/vault --ask-vault-pass

# typical workflow involves adding repo, installing from apt, copying templated config files and starting

# TO-DO list
- Remote docker volumes backup via ansible
- Docker image update via ansible
- Push docker compose environment and start/stop/update it

# The three below will be a docker-compose file
#- Zeek install + config + enable (filebeat friendly)
#- Suricata install + config + enable (filebat friendly)
#- Suricata add/remove/check rulesets

- Crowdsec frontline setup (remote LAPI, basic modules including docker, the rest free for the user to configure)
- Crowdsec add/remove/check collections
- Crowdsec edit acquis.yaml file, for example to add a container

- Filebeat install + config remote endpoint
- Filebeat add/remove/check module

# network monitoring
TODO docker-compose with zeek + suricata, all around network monitoring, zeek for rita and brim; suricata for rule based


# TODO
1. buluma borg backup setup (dipreistic archive)
2. fool-proof docker swarm cluster ( managers and workers ) (this pairs with 2. to deploy compose stacks with scalability)
3. deploy compose stack to swarm, services scattered by swarm's scheduler
4. deploy compose stack to single node, albeit being in the swarm (this is the case for network security monitor which needs direct access to the physical NIC in a specific host)

5. ansible based cluster security assessment (something like lynis or thor)

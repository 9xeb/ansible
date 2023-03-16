# ansible
Ansible roles and playbooks

# run command with inventory and vault
# you can reference variables in inventory with '{{ var_name }}'
ansible-playbook -i path/to/inventory -b PLAYBOOK.yml -e@path/to/vault --ask-vault-pass


# TO-DO list
- Remote docker volumes backup via ansible
- Docker image update via ansible
- Zeek setup
- 

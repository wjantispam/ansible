#!/usr/bin/env bash
if $(add-apt-repository --list | grep -q ansible); 
then 
	echo "Ansible repository exists"; 
else 
	echo "Adding ansible repository and install ansible"; 
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt install ansible
fi


ansible-playbook  -i inventory site.yml  -c local --ask-become-pass

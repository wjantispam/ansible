#!/usr/bin/env bash
sudo apt-add-repository ppa:ansible/ansible
sudo apt install ansible

ansible-playbook  -i inventory site.yml  -c local --ask-become-pass

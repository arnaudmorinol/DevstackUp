#!/bin/bash
set -e
# Demarre la VM
vagrant up
# Supprime ancien package.box si existe
rm -f package.box
# Creation box depuis la VM
vagrant package
# Ajout de cette box dans la librairie des box de ce PC
vagrant box add devstack-arnaud package.box -f
# Stop la VM
vagrant halt
# Supprime la VM
#vagrant destroy -f

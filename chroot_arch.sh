#!/bin/bash

# Version: 2020.10.12

set -o nounset
set -o errexit
#set -o noclobber
#set -o noglob


# source general settings and host.conf
source_configs(){
  source host.conf
  source libs/general.conf
  source libs/chroot.conf
}


# run chroot functions 
source_configs
set_proxy
install_grub
copy_etc_files
set_ethernet_netctl
create_user_dirs_and_pwds
copy_configs


#!/bin/bash

# Version: 2020.10.01

set -o nounset
set -o errexit
#set -o noclobber
#set -o noglob


source_configs(){
# source general settings and host.conf
  source host.conf
  source libs/general.conf
  source libs/partitioning.conf
  source libs/pkgs.conf

}

load_keys(){
# set keymap
  loadkeys de-latin1-nodeadkeys.map.gz
}


# run all functions 
hdd_table
create_pv_vg
set_fs_boot
set_fs_root_os
create_and_mount_lv
install_pkgs
set_system_configs



#HDD=$1
#HDD_LAYOUT=$2
#SERVER_SYSTEM=$3
#CRYPTO=$4


#if [ $# -ne 4 ]; then
	#echo "Usage: $0 <HDD> <HHD_Layout> <SERVER_SYSTEM> <CRYPTO>" 
	#echo "Example: $0 sda blub desktop crypt"
			 #CRYPTO:\n
			 #- crypt
			 #- nocrypt"
	#exit 1
#fi




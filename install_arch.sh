#!/bin/bash

# Version: 2020.10.08

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
  source libs/installed_os_setup.conf
}


# run all functions 
load_keys
prep_iso_for_setup
hdd_table
create_pv_vg
set_fs_boot
set_fs_root_os
create_and_mount_lv
install_pkgs
set_etc_configs
export_root_uuids
set_grub_config
set_mkinitcpio
copy_files_to_chroot
enter_chroot

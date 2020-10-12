#!/bin/bash

# Version: 2020.10.12

set -o nounset
set -o errexit
#set -o noclobber
#set -o noglob



# run all functions 
source_configs
load_keys
set_proxy
prep_iso_for_setup
hdd_table
create_pv_vg
set_fs_boot
set_fs_root_os
create_lvs
create_and_mount_lv
install_pkgs
set_etc_configs
export_root_uuids
set_grub_config
set_mkinitcpio
copy_files_to_chroot
enter_chroot

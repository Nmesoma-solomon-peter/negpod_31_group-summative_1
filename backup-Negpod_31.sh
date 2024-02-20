#!/bin/bash
#script that backup the directory created in task 2

# Replace the following variables with your specific details
remote_host="64293e56bc62.3a2627c1.alu-cod.online"
remote_username="64293e56bc62"
remote_password="328d3b338a4ced526c9a"
remote_location="/summative/1023-2024j"
local_directory="negpod_31-q1"

# Use rsync to perform the backup
rsync -rav --progress -e "sshpass -p $remote_password ssh -o StrictHostKeyChecking=no" "$local_directory/" "$remote_username@$remote_host:$remote_location/"

echo "Backup completed successfully to remote server."

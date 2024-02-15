#!/bin/bash

# Replace the following variables with your specific details
remote_host="2f05c1f8800b.3be8ebfc.alu-cod.online"
remote_username="2f05c1f8800b"
remote_password="d4a1d225d0abda9549d8"
remote_location="/summative/1023-2024j"
local_directory="negpod_31-q1"

# Use rsync to perform the backup
rsync -rav --delete --progress -e "sshpass -p $remote_password ssh -o StrictHostKeyChecking=no" "$local_directory/" "$remote_username@$remote_host:$remote_location/"

echo "Backup completed successfully to remote server."

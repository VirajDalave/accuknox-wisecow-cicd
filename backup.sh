#!/bin/bash

SOURCE_DIR="/var/logs/nginx/"       
REMOTE_USER="ubuntu"                
REMOTE_HOST=""       
REMOTE_DIR="/var/logs/nginx/"   


echo "Starting backup: $(date)"
rsync -avz --delete "$SOURCE_DIR" "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}"


if [ $? -eq 0 ]; then
    echo "Backup successful!"
else
    echo "Backup failed!"
fi

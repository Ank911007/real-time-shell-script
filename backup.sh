#!/bin/bash

# Source directory to backup
src_dir="path/to/source/directory"

# Backup destination directory
backup_dir="path/to/backup/directory"

# Backup filename with date
backup_filename="backup_$(date +%Y-%m-%d-%H-%M-%S).tar.gz"

# Create backup directory if it dosent exist
mkdir -p "$backup_dir"

echo "backing up to $backup_filename"

echo "backup_filename"

# Create backup using tar
tar -czvf "${backup_dir}/${backup_filename}" "${src_dir}"

# Check if backup is Sucessful or not
if [ $? -eq 0 ]; then
        echo "backup sucessful: $backup_filename created in $backup_dir"
else
        echo "backup failed"
fi

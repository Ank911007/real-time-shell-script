#!/bin/bash

# Database Credentials
DB_USER="your_username"
DB_PASS="your_password"
DB_NAME="your_database"

# Backup directory
BACKUP_DIR="path/to/backup/directory"

# Date format for backup file
DATE=$(date +"%Y-%m-%d-%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-backup-$DATE.sql"

# Create Backup directory if it doesnt exist
mkdir -p $BACKUP_DIR


#Perform Database backup using mysqldump
mysqldump -u "$DB_USER" -p "$DB_PASS" "$DB_NAME" > "$BACKUP_FILE"

# Check if Backup was sucessful
if [ $? -eq 0 ]; then
        echo "Database backup successful : $BACKUP_FILE"
else
        echo "Database backup failed"
fi

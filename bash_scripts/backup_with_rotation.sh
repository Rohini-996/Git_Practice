#!/bin/bash

function display_usage {
    echo "Usage: ./backup_with_rotation.sh <path to your source> <path to your dest>"
}

# Check for 2 arguments
if [ $# -ne 2 ]; then
    display_usage
    exit 1
fi

src=$1
dest=$2
timestamp=$(date '+%Y-%m-%d-%H-%M')

function create_backup {
    zip -r "${dest}/backup_${timestamp}.zip" "${src}"

    if [ $? -eq 0 ]; then
        echo "Backup completed for ${timestamp}"
    else
        echo "Backup failed!"
        exit 1
    fi
}

function rotation_mechanism {
    # Get list of backup files sorted by time (newest first)
    backups=($(ls -t "${dest}/backup_"*.zip 2>/dev/null))

    if [ "${#backups[@]}" -gt 5 ]; then
        echo "Backup rotation started.Keeping only the 5 most recent backups."

        # Keep the first 5, remove the rest
        backups_to_remove=("${backups[@]:5}")

        for file in "${backups_to_remove[@]}"; do
            rm -f "$file"
            echo "Deleted $file"
        done
    fi
}

# Run the backup and rotation
create_backup
rotation_mechanism




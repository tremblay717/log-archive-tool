#!/bin/bash

echo "-----------------------------------------------------"
echo "Log Archiving Tool"
echo "Archives logs from a specified folder"
echo "-----------------------------------------------------"
echo "" # Adds an empty line for better readability

echo -e "Passed Argument: $1\n"

echo -e "Verifying if argument is valid..\n"

sleep 0.5

# If no argument
if [[ -z "$1" ]]; then
    echo "Please provide a valid argument"
    exit 1
fi

# Determining if file
if [[ -f "$1" ]]; then
    echo "Error; please, provide a directory"
    exit 1
fi

# Checking if directory is empty
if [[ -d "$1" ]] && [[ $(ls "$1" | wc -l) -eq 0 ]]; then
    echo "Error; Empty directory"
    exit 1
fi


# Valid Input provided
echo -e "Sound like argument is valid..\n"

# Using now date for archive name
todayDate=$(date +%Y%m%d_%H%M%S)
archiveName="logs_archive_$todayDate.tar.gzip"

echo -e "Starting compressing.."

sudo tar -czf "$HOME/log-archiver/$archiveName" "$1"

echo -e "\nFile saved to $HOME/log-archiver/$archiveName"



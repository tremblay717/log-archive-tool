#!/bin/bash

# Pretty header
printf "\n#######################################\n"
echo "INSTALLING LOG ARCHIVER: log-archiver"
printf "#######################################\n\n"
sleep 0.5

# Create target folder
mkdir -p ~/log-archiver
mkdir -p ~/.local/bin

echo -e "Logs will be stored at : $HOME/log-archiver\n"

# Create the greet script
echo "***"
echo -e "Creating log-archiver script...\n"
sleep 0.5

echo -e "Installing the following dependencies:\n"

echo -e "gnu-tar installation"
brew install gnu-tar

# Copy it to ~/.local/bin and make it executable
cp ./log_archiver.zsh ~/.local/bin/log-archive
chmod +x ~/.local/bin/log-archive

# Add ~/.local/bin to PATH if not present
echo "Ensuring ~/.local/bin is in PATH..."
if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' ~/.zprofile; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zprofile
    echo 'Added to ~/.zprofile'
fi

# Reload shell profile
source ~/.zprofile

# Confirm installation
echo -e "\nInstallation complete!"
echo -e "Try running:\n  log-archive\n"
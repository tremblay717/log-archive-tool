# log-archive-tool
Script made for the Roadmap.sh log-archive cli tool project => [here](https://roadmap.sh/projects/log-archive-tool)

## Description
This simple CLI tool archives a directory in a folder located in the user home directory

## Requirements
- **macOS**
- **Homebrew** (macOS package manager)
- **sudo access**

Your account must also have sudo privileges.

HomeBrew Installation (if not installed):
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

gnu-tar is installed with the installation script. See below

## Installation
```
git clone https://github.com/your-username/log-archive-tool.git
cd log-archive-tool
```

To install the CLI tool, start by making sure the file `log-archive-tool/installer.zsh` is executable
```
chmod +x ./installer.zsh
```

Run the install script
```
./installer.zsh
```

The output should look like this: 
```
INSTALLING LOG ARCHIVER: log-archiver
#######################################

Logs will be stored at : [your home directory]/log-archiver

***
Creating log-archiver script...

Installing the following dependencies:

gnu-tar installation
==> Downloading https://formulae.brew.sh/api/formula.jws.json
==> Downloading https://formulae.brew.sh/api/cask.jws.json
Warning: gnu-tar 1.35 is already installed and up-to-date.
To reinstall 1.35, run:
  brew reinstall gnu-tar
Ensuring ~/.local/bin is in PATH...

Installation complete!

Reload your shell with : source ~/.zprofile

Try running:
  log-archive
```

After installing, you should reload your shell with `source ~/.zprofile`.

The install script does the following: 
* Creating a log archive directory in your home folder where logs will be stored
* Downloading gnu-tar from HomeBrew
* Adding log-archive to your $PATH

## Usage
To run the script, simply launch `log-archive` with a single argument, which is the targeted directory

Be prepared to enter your password when asked

Example: 
```
log-archive /var/log
```

If sucessful, the output should look like this :
```
File saved to $HOME/log-archiver/logs_archive_20250621_113119.tar.gzip
```

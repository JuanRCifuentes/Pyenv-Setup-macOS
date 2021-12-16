# Pyenv Setup

## Initial setup
This repositoty hosts shell scripts to help setup pyenv. This works for pyenv version 2.2.2 on macOS.

It takes into account all the steps and recommendations listed in the [official pyenv repository in Github](https://github.com/pyenv/pyenv).

> **Execute the scripts:** To execute the scripts, locate the folder in terminal and then write `./<file.sh>`.

Files:
1. `install_pyenv.sh`: Execute this file to install pyenv and virtual-env.
2. `backup_python.sh`: Execute this file to create a backup of all your pyenv environments and packages.
3. `install_python_versions.sh`: Execute this file to install every python version with it's environments and packages in the backup created above.

## Virtualenv plug-in

It also helps with the setup of virtualenv, which is published by the same Github user and as a plug-in for pyenv. [Official virtualenv repository](https://github.com/pyenv/pyenv-virtualenv).

## Virtual Environments backup
To create a backup for all virtual environments, there is a script called `backup_python.sh`. This scans every python version installed and every virtual environment within them. It later creates text files with every dependency (using the `pip freeze` command) installed in those environments in a folder called `Versions`.

## Virtual Environments Restore (Install Python Versions)
To restore any previously backedup virtual environment, there is a script called `install_python_versions.sh`. It reads the files created by the backup file and:
1. Installs every python verison listed
2. Creates all the virtual environments listed
3. Updates `pip` in every virtual environment and later installs every dependency listed with the `pip freeze` command.

## Credits
1. Repositories for [pyenv](https://github.com/pyenv/pyenv#basic-github-checkout) and [virtualenv](https://github.com/pyenv/pyenv-virtualenv)
2. [Introduction to Shell Scripting](https://www.youtube.com/watch?v=k1J69q8D9vM)
3. [`pyenv doctor` fix](https://stackoverflow.com/questions/51919720/pyenv-python-installation-failure-openssl-development-header-is-not-installed)
4. [`pip freeze` command usage](https://stackoverflow.com/questions/11248073/what-is-the-easiest-way-to-remove-all-packages-installed-by-pip)
5. [`for` loops in Zsh](https://linuxhint.com/for-loops-zsh-script/)
6. [Zsh string modifiers](https://zsh.sourceforge.io/Doc/Release/Expansion.html)

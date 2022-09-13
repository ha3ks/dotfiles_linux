## Weaponize Kali Linux

# Modify PATH for a normal user with any method you want (.bashrc / .profile / .zshrc / etc.) to have export PATH="$HOME/.local/bin:$PATH". Modify PATH for the superuser by modifying secure_path within sudoers (sudo visudo), you can do that quickly with the command below:
pipx ensurepath
# It may ask to install pipx so let it and rerun the script.

# Install the Weaponize Kali Script
bash <(curl -sL https://github.com/penetrarnya-tm/WeaponizeKali.sh/raw/main/WeaponizeKali.sh) -idtw

# Quick check on the directories that get added to /home (should be full of files now)
ls -la tools www

=============================

## Sometimes when running things it can break and/or error your apt-get update, this is a quick fix to move the gpg file into gpg.d
mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/

## Additionally Bi-directional copy paste can also break from time to time, this script reinstalls the functionality
sudo apt install -y --reinstall virtualbox-guest-x11

# Does need a reboot mind so run:
sudo reboot -f

=============================

## Installing nmapAutomater:

git clone https://github.com/21y4d/nmapAutomator.git

sudo ln -s $(pwd)/nmapAutomator/nmapAutomator.sh /usr/local/bin/

# Some scans can run as nmapAutomater.sh etc etc but full scanning needs sudo privs
# Examples of the formatting can be seen below:
nmapAutomator.sh --host 127.0.0.1 --type All --output nmapAutomater.txt
./nmapAutomator.sh --host 10.1.1.1 --type All
./nmapAutomator.sh -H 10.1.1.1 -t Basic
./nmapAutomator.sh -H academy.htb -t Recon -d 1.1.1.1
./nmapAutomator.sh -H 10.10.10.10 -t network -s ./nmap

=============================

## Installing AutoRecon

sudo apt update

sudo apt install python3
sudo apt install python3-pip

# Most of these will have been installed already thanks to weaponizekali.sh but manually listing here if you want to do it the old fashioned way:
sudo apt install seclists curl enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

# Install python3-venv
sudo apt install python3-venv

# Install pipx
python3 -m pip install --user pipx

# Ensure that path.
python3 -m pipx ensurepath

# Reload your source file (in this case bashrc but I usually find myself in zsh)
source ~/.bashrc
# May need to close and reopen terminal after running this as it can cause graphical bugs.

# Install AutoRecon
pipx install git+https://github.com/Tib3rius/AutoRecon.git

# Quick example scripts, worth reading the instructions on this one, tool is hella handy.
sudo env "PATH=$PATH" autorecon [OPTIONS]
## sudo $(which autorecon) [OPTIONS]

=============================


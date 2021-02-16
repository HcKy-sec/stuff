#!/bin/bash

# downloads some tools that are useful for stuff

sudo apt-get update 
sudo apt install exiftool --yes
sudo apt install flameshot --yes
sudo apt install maven --yes
sudo apt install default-jdk --yes
sudo apt install ltrace --yes
sudo apt install strace --yes
sudo apt install gss-ntlmssp --yes
sudo apt install powershell --yes
sudo apt install responder --yes

sudo gem install evil-winrm

pip install impacket
python3 -m pip install pipx
pipx ensurepath
pipx install crackmapexec

sudo git clone https://github.com/PowerShellMafia/PowerSploit /opt/PowerSploit

sudo git clone https://github.com/besimorhino/powercat /opt/powercat

sudo git clone https://github.com/ReFirmLabs/binwalk.git /opt/binwalk
sudo python3 /opt/binwalk/setup.py install
cd/opt/binwalk
python setup.py install

sudo git clone https://github.com/DominicBreuker/pspy.git /opt/pspy

sudo git clone https://github.com/cldrn/davtest.git /opt/davtest

mkdir /opt/ysoserial
cd /opt/ysoserial
wget https://jitpack.io/com/github/frohoff/ysoserial/master-SNAPSHOT/ysoserial-master-SNAPSHOT.jar

sudo git clone https://github.com/jpillora/chisel.git /opt/chisel
cd /opt/chisel
go build -ldflags "-s -w"
env GOOS=windows GOARCH=amd64 go build -o chisel-x64.exe -ldflags "-s -w"

sudo mkdir /opt/ghidra
cd /opt/ghidra
sudo wget https://ghidra-sre.org/ghidra_9.2.1_PUBLIC_20201215.zip
sudo unzip /opt/ghidra/ghidra_9.2.1_PUBLIC_20201215.zip
sudo rm /opt/ghidra/ghidra_9.2.1_PUBLIC_20201215.zip
sudo mv /opt/ghidra/ghidra_9.2.1_PUBLIC/* /opt/ghidra
sudo rm -r /opt/ghidra/ghidra_9.2.1_PUBLIC

git clone https://github.com/radareorg/radare2 /opt/radare2
cd /opt/radare2 ; sys/install.sh

cd ~/Downloads
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

mkdir /opt/rustscan
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -o /opt/rustscan/rustscan_2.0.1_amd64.deb
cd /opt/rustcan
dpkg -i rustscan_2.0.1_amd64.deb

cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome* --yes

rm -rf *

echo '#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=joplin
Icon[en_US]=joplin
Name[en_US]=joplin
Exec=joplin
Name=joplin' > /home/htb-hcky/Desktop/joplin.desktop
chmod +x /home/htb-hcky/Desktop/joplin.desktop

echo '#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=flameshot
Icon[en_US]=flameshot
Name[en_US]=flameshot
Exec=flameshot
Name=flameshot' > /home/htb-hcky/Desktop/flameshot.desktop
chmod +x /home/htb-hcky/Desktop/flameshot.desktop

echo '#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=google-chrome
Icon[en_US]=google-chrome
Name[en_US]=chrome
Exec=google-chrome
Name=chrome' > /home/htb-hcky/Desktop/chrome.desktop
chmod +x /home/htb-hcky/Desktop/chrome.desktop

sudo apt install wireshark --yes

sudo updatedb

# Upgrade OS
	sudo apt update && sudo apt upgrade -y
	
# Cai dat tieng viet
	sudo add-apt-repository ppa:teni-ime/ibus-teni -y
	sudo apt-get update
	sudo apt-get install ibus-teni -y
# install ssh
	sudo apt install -y vim openssh-server
# Cai dat Skype
	wget https://repo.skype.com/latest/skypeforlinux-64.deb
	sudo dpkg -i skypeforlinux-64.deb
	rm skypeforlinux-64.deb
# install Zopier
	wget https://qlts.voltrans.org/software/zoiper5_5.2.19_x86_64.deb
	sudo dpkg -i zoiper5_5.2.19_x86_64.deb
	rm zoiper5_5.2.19_x86_64.deb
# Install Viber
	mkdir -p ~/Download/software/
	wget https://qlts.voltrans.org/software/vibernew.deb -O ~/Download/software/
	sudo dpkg -i ~/Download/software/vibernew.deb
	sudo apt install -f -y

#Install Chrome
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb ~/Download/software/
	sudo dpkg -i ~/Download/software/google-chrome-stable_current_amd64.deb 

# Install Geary Mail
	sudo apt install geary -y
# Install Bitrix24
	sudo apt-get install build-essential cmake git -y
	sudo apt-get install libgtk2.0-dev libudev1 libnss3 libgconf-2-4 libnotify-dev libxss-dev -y
	sudo apt-get install desktop-file-utils xdg-utils -y
	cd ~/Download/software/
	git clone --recursive https://github.com/buglloc/brick.git 
	mkdir build && cd build
	cmake ../brick
	make
	sudo make install

# install Fusioninventory
	sudo apt-get install  dmidecode hwdata ucf hdparm perl libuniversal-require-perl libwww-perl \
	libparse-edid-perl libproc-daemon-perl  libproc-pid-file-perl libfile-which-perl libxml-treepp-perl \
	libyaml-perl libnet-cups-perl libnet-ip-perl libdigest-sha-perl libsocket-getaddrinfo-perl libtext-template-perl -y
	sudo apt-get install nmap libnet-snmp-perl libcrypt-des-perl libnet-nbname-perl -y
	sudo apt-get install libfile-copy-recursive-perl libparallel-forkmanager-perl -y
	sudo apt-get install fusioninventory-agent fusioninventory-agent-task-network fusioninventory-agent-task-deploy  -y

# Install X2Go
	sudo add-apt-repository ppa:x2go/stable -y
	sudo apt-get update
	sudo apt-get install x2goserver x2goserver-xsession x2godesktopsharing -y
	systemctl enable x2goserver
	systemctl start x2goserver
# Install GoldenDict
	sudo apt-get install goldendict -y
	sudo apt-get install goldendict-wordnet -y
	sudo apt install -f -y

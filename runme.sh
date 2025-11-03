sudo xbps-install -Su xbps -y
sudo xbps-install -Syyu -y
sudo xbps-install xtools git wget linux-headers gcc base-devel void-repo-nonfree dkms nano -y 
sudo xbps-install -Syyu b43-fwcutter -y

cd ~

wget https://github.com/howtoedittv/broadcom-wl-void/releases/download/1.0/broadcom-wl-5.100.138.tar.bz2

export FIRMWARE_INSTALL_DIR="/lib/firmware" 

tar xjf ~/broadcom-wl-5.100.138.tar.bz2

sudo b43-fwcutter -w "$FIRMWARE_INSTALL_DIR" ~/broadcom-wl-5.100.138/linux/wl_apsta.o

sudo modprobe b43 wl brcmsmac 


sudo xbps-install broadcom-wl-dkms -y

sudo xbps-remove broadcom-wl-dkms -y

sleep 5

sudo reboot



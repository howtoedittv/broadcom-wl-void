# broadcom-wl-void
the broadcom wl for the distro void linux working stably (not like the dkms one)


# instrctions

git clone the repo

cd broadcom-wl-void

chmod +x runfirst && chmod +x easyinstall

./runfirst

your device will reboot

after booting back cd into the folder and run the next file

./easyinstall

it will also reboot your device 

after that broadcom wl should be started automticly if not start it with

sudo modprobe wl 


thats it. have a good day 

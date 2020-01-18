# Add repo
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update

# Check driver recommendation
ubuntu-drivers devices

# Version check of NVIDIA graphic card
nvidia-smi

# Install driver: replace XXX with the 3 digits number
sudo apt install nvidia-driver-XXX

# Kernel verision fix
sudo apt-get install aptitude
aptitude show linux-generic
cd /etc/apt/preferences.d

sudo vim linux-kernel.pref # Manually fill out the below:
#Package: linux-generic
#Pin: version 4.15.0.xx.xx
#Pin-Priority: 1001
#
#Package: linux-headers-generic
#Pin: version 4.15.0.xx.xx
#Pin-Priority: 1001
#
#Package: linux-image-generic
#Pin: version 4.15.0.xx.xx
#Pin-Priority: 1001

#
# URL: https://stackoverflow.com/questions/54336626/how-to-create-virtualbox-shared-folder-between-windows-host-and-ubuntu18-04-gues
#
DIR_SHARE=/media/win/01_Projects

# Change visudo editor from nano to nvim
#update-alternatives --config editor
#sudo visudo

# Append the following command manually
#jma ALL = (ALL) NOPASSWD: /bin/mount

#apt update
apt install virtualbox-guest-dkms
apt install virtualbox-guest-utils
#reboot

mkdir -p $DIR_SHARE 
mount -t vboxsf 01_Projects $DIR_SHARE
ls $DIR_SHARE
chmod -R 777 /media

# Add auto mount command on .bashrc
#echo "sudo mount -t vboxsf 01_Projects $DIR_SHARE" >> /home/jma/.bashrc

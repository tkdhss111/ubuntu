apt install -y git
git clone https://github.com/tkdhss111/vim
git clone https://github.com/tkdhss111/servers
cd vim
gedit taketa_install_vim.sh
sudo sh ./taketa_install_vim.sh
apt install -y neovim
vim
:call dein#install()
:call dein#update()
#unity-tweak-tool
sudo sh ./taketa_install_fortran_vim.sh
sudo sh ./taketa_configure_keymap.sh
cd ../servers
vim taketa_install_antivirus.sh	
sudo sh ./taketa_install_antivirus.sh
vim taketa_install_rkhunter.sh
sudo sh ./taketa_install_rkhunter.sh
sudo apt install -y openssh-server
sudo vim /etc/ssh/sshd_config
Port 20022
PermitRootLogin prohibit-password
PasswordAuthentication no 
sudo ufw enable
sudo ufw allow 20022

sudo apt install -y meld
sudo apt install -y baobab
sudo apt install -y htop

# zathura
# xrdp
# texlive
# sqlite3
# sqlitebrowser
# rsync
# rstudio
# microsoft-r-open-mkl-4.0.2
# microsoft-r-open-mro-4.0.2
# ninja-build
# openssh-server
# 


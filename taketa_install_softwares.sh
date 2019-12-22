apt update

# Convienient tools
apt install baobab, gnumeric, htop, meld, gparted, apcalc -y

# Unused software removal
apt remove --purge Cheese -y

#
# Remote desktop
#
# Linux settings: set all X11Forwarding options to yes in ssh and sshd configs.
# 
# Use Mozc(Google Japanese Input System Clone) 
#
# Windows settings: use MobaXterm RDP and set ssh tunneling settings properly.
#
#apt remove --purge xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils xrdp -y
apt install gdm4
apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y
apt install xrdp -y
systemctl status xrdystemctl status xrdp
adduser xrdp ssl-cert
cat <<EOF>> /etc/xrdp/xrdp.ini
exec startxfce4
EOF
ufw allow 3389
systemctl restart xrdp

#
# For xfc4
#
#  iBus 日本語入力を使うための準備をする。
#  
#    ログインする
#    アプリケーションメニュー > 設定 > セッションと起動 の順にたどる
#    タブ「自動開始アプリケーション」を選択する
#    名前: iBus、コマンド: /usr/bin/ibus-daemon としてアプリケーションを追加する
#    再起動し、ログインする
#    パネルの通知エリアにあるiBusのアイコンから設定に移る

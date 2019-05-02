echo "i3相关安装脚本" && \
pacman -S xorg gdm xorg-xmessage && \
pacman -S i3-gaps i3blocks i3lock i3status rxvt-unicode --noconfirm && \
systemctl enable gdm.service && \
echo "i3安装完毕"

USER_NAME=mingfeng
HOST_NAME=thinking

# 设置机器名
echo $HOST_NAME > /etc/hostname && \

# 设置时区
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \

# 设置locale
echo "LANG=en_US.UTF-8" > /etc/locale.conf && echo "LC_CTYPE=zh_CN.UTF-8" >> /etc/locale.conf && \

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen && \

export LANG=en_US.UTF-8 && export LC_TYPE=zh_CN.UTF-8 && locale-gen && \

# 创建用户
useradd -m -g users -s /bin/bash $USER_NAME && passwd $USER_NAME && \

# 赋予用户sudo权限
usermod -G sudo $USER_NAME && \


# 下载grub及配置
pacman -S grub-bios --noconfirm && grub-install /dev/sda && grub-mkconfig -o /boot/grub/grub.cfg && \


mkinitcpio -p linux && \

echo "i3相关安装脚本" && \
pacman -S xorg gdm xorg-xmessage && \

systemctl enable gdm.service && \

echo "system setting done!!!"
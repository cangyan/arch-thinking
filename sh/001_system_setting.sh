# 设置机器名
echo thinking > /etc/hostname && \

# 设置时区
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \

# 设置locale
echo LANG=en_GB.UTF-8 > /etc/locale.conf && echo LC_TYPE=zh_CN.UTF-8 >> /etc/locale.conf && \
export LANG=en_GB.UTF-8 && export LC_TYPE=zh_CN.UTF-8 && locale-gen

# 创建用户
useradd -m -g users -s /bin/bash mingfeng && passwd mingfeng && \

# 赋予用户sudo权限
usermod -G sudo mingfeng && \


# 下载grub及配置
pacman -S grub-bios --noconfirm && grub-install /dev/sda && grub-mkconfig -o /boot/grub/grub.cfg && \
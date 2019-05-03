# 简介
基于Arch系统个性化定制

# 步骤
## 硬盘分区
## 格式化分区
## 挂载分区
## 设置wifi(可选)
```
ip link set interface up
wpa_suppliant -B -i interface -c <(wpa_passphrase SSID password)
```

## 设置源镜像`/etc/pacman.d/mirrorlist`
```
Server = http://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch
```

## 安装系统
```
pacstrap /mnt base
```

## 生成fstab信息
```
genfstab -p /mnt >> /mnt/etc/fstab
```

## 以root用户进入系统
```
arch-chroot /mnt
```

## 修改root密码
```
passwd
```

## 安装sudo
```
pacman -S sudo
```

## 开启sudo权限
```
EDITOR=vi visudo

将%sudo ALL=(ALL) ALL前的注释去掉
```

## 添加sudo组
```
groupadd sudo
```

## 安装git
```
pacman -S git openssh
```

## 下载自动化脚本
```
git clone https://github.com/cangyan/arch-thinking.git
```

# wifi自动连接注意
## 用wifi-menu生成配置文件
## 安装包
```
pacman -S netctl wireless_tools
```
## 生成加密key
```
wpa_passphrase SSID
输入key
network={
  ssid="your_essid"
  #psk="passphrase"
  psk=64cf3ced850ecef39197bb7b7b301fc39437a6aa6c6a599d0534b16af578e04a
}
将psk回写与配置文件中
```
## 报错时禁用服务
```
systemctl disable dhcpcd.service systemd-networkd.service && reboot
```

## 设置开机启动
```
systemctl start netctl-auto@wlp3s0.service
systemctl enable netctl-auto@wlp3s0.service
```

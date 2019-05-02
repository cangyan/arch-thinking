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
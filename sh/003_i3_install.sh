# 用户角色下运行
sudo pacman -S i3-gaps i3blocks i3lock i3status rxvt-unicode lua conky compton nitrogen w3m feh --noconfirm && \

sudo pacman -S awesome-terminal-fonts ttf-font-awesome iw --noconfirm && \

# 配置i3
# mkdir -p ~/.config/i3status && sudo cp /etc/i3status.conf ~/.config/i3status/config && \

mkdir -p ~/.config/i3blocks && cp $PWD/../i3/i3blocks.conf ~/.config/i3blocks/config && \

cp $PWD/../i3/battery.sh ~/.config/i3blocks/ && \

cp $PWD/../i3/memory.py ~/.config/i3blocks/ && \

cp $PWD/../i3/volume.sh ~/.config/i3blocks/ && \

cp $PWD/../urxvt/Xresources ~/.Xresources && \

echo "set preview_images true" > ~/.config/ranger/rc.conf && \

if [ ! -d "~/.urxvt/ext" ]; then
    mkdir -p ~/.urxvt/ext
fi && \

cp $PWD/../urxvt/keyboard-select ~/.urxvt/ext/ && \

xrdb -load ~/.Xresources && \

echo "i3安装完毕"

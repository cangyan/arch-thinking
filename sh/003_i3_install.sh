# 用户角色下运行
sudo pacman -S i3-gaps i3blocks i3lock i3status rxvt-unicode lua conky compton nitrogen w3m feh --noconfirm && \

# 配置i3
mkdir -p ~/.config/i3/i3status && sudo cp /etc/i3status.conf ~/.config/i3/i3status/default.conf && \

mkdir -p ~/.config/i3/i3blocks && sudo cp /etc/i3blocks.conf ~/.config/i3/i3blocks/default.conf && \

cp $PWD/../urxvt/Xresources ~/.Xresources && \

echo "set preview_images true" > ~/.config/ranger/rc.conf && \

if [ ! -d "~/.urxvt/ext" ]; then
    mkdir -p ~/.urxvt/ext
fi && \

cp $PWD/../urxvt/keyboard-select ~/.urxvt/ext/ && \

xrdb -load ~/.Xresources && \

echo "i3安装完毕"

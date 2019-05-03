wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip -P /tmp && \
unzip /tmp/Hack-v3.003-ttf.zip -d /tmp/ && \


if [ ! -d "/usr/share/fonts/TTF" ]; then
    mkdir -p /usr/share/fonts/TTF
fi && \


sudo cp /tmp/ttf/* /usr/share/fonts/TTF && sudo fc-cache -f -v
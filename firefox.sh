#!/usr/bin/env bash

#######################
# Author: bzyy
# Version: 1.0
# Desc: auto install firefox
# Date: 2020.09.11
######################

if [ `whoami` != "root" ];then
    echo "please use root run!"
    exit 1
fi

pushd /tmp >/dev/null
fileUrl="https://download-ssl.firefox.com.cn/releases/firefox/esr/78.2/zh-CN/Firefox-latest-x86_64.tar.bz2"
fileName="Firefox-latest-x86_64.tar.bz2"

wget -c $fileUrl -O $fileName || exit 1

tar -jxvf $fileName -C /opt/

popd >/dev/null

cat <<EOF > /opt/firefox/firefox.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=firefox
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Exec="/opt/firefox/firefox"
Comment=firefox;
Categories=Development;tool;
Terminal=false
StartupWMClass=firefox
EOF
ln -s /opt/firefox/firefox.desktop /usr/share/applications/firefox.desktop

ln -s /opt/firefox/firefox /usr/local/bin/firefox
echo "install firefox success!"
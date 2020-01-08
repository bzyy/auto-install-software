#!/usr/bin/env bash

#######################
# Author: bzyy
# Version: 1.0
# Desc: auto install postman
# Date: 2020.01.08
######################

if [ `whoami` != "root" ];then
    echo "please use root run!"
    exit 1
fi

pushd /tmp >/dev/null
fileUrl="https://dl.pstmn.io/download/latest/linux64"
fileName="postman-latest.tar.gz"

wget -c $fileUrl -O $fileName || exit 1

tar -zxvf $fileName -C /opt/

popd >/dev/null

# 桌面图标
cat <<EOF >/opt/Postman/postman.svg
<?xml version="1.0" encoding="utf-8"?>
<!-- Generator: Adobe Illustrator 23.0.4, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
<style type="text/css">
	.st0{fill:#FF6C37;}
	.st1{fill:#FFFFFF;}
</style>
<title>logo-mark</title>
<path class="st0" d="M288.6,2.1C148.4-15.9,20.1,83.2,2.1,223.4s81.1,268.5,221.3,286.5s268.5-81.1,286.5-221.3
	C527.9,148.4,428.8,20.1,288.6,2.1z M398.6,166.7l-25.8-25.8l32.7-32.7c14.1,15.3,13.6,39.1-1.2,53.8
	C402.6,163.7,400.7,165.3,398.6,166.7L398.6,166.7z M106.1,397l20.2-20.2l26.1,26.1l-45.3-3.1c-0.9-0.1-1.6-0.9-1.5-1.8
	C105.6,397.6,105.7,397.3,106.1,397L106.1,397z M209.8,245.5l18.8,18.7l-42.2,9.1c-0.7,0.2-1.5-0.2-1.8-0.8c-0.4-0.7-0.3-1.5,0.3-2
	L209.8,245.5z M219.7,284.7c-0.3-0.5-0.2-1.2,0.2-1.6l13.8-13.8l10.9,10.9l-23.5,5.1C220.5,285.5,219.9,285.2,219.7,284.7
	L219.7,284.7z M354.8,180.5c-0.1,3.7-1.7,7.1-4.5,9.5l-100.2,88l-12.5-12.5l94.7-94.7c5.2-5.2,13.5-5.2,18.7,0
	C353.5,173.3,354.9,176.9,354.8,180.5z M328.6,167.1l-95,95l-6.6-6.6l-13.7-13.7c93.6-93.4,110.5-94.3,127.9-80.1
	C336.5,161.9,332,163.8,328.6,167.1z M156,399.4l-19.9-19.9l-6.3-6.3l80.3-80.2l38.8-8.4l18.6,18.6c-26.8,23.5-63.4,46.9-108.8,69.7
	l0,0c-2,1-3,3.3-2.5,5.5l4.3,18.5c0.3,1.4-0.5,2.9-2,3.2C157.7,400.3,156.7,400,156,399.4L156,399.4z M271.3,299.8l-17.9-17.9
	l100.2-88c0.9-0.8,1.8-1.7,2.5-2.7C353,219.9,312.9,260.4,271.3,299.8L271.3,299.8z M349.3,161.9c-15.1-15.2-15.1-39.8,0.1-55
	c14.2-14.2,36.9-15.2,52.3-2.3l-34.3,34.4c-1,1-1,2.6,0,3.6l26.6,26.6C379.1,176.7,361.1,173.8,349.3,161.9L349.3,161.9z"/>
<path class="st1" d="M213.4,241.9l13.7,13.7l6.6,6.6l95-95c3.4-3.4,7.9-5.3,12.6-5.4C323.9,147.6,307,148.5,213.4,241.9z"/>
<path class="st1" d="M353.7,193.9l-100.2,88l17.9,17.9c41.6-39.4,81.7-79.9,84.9-108.7C355.5,192.1,354.6,193,353.7,193.9z"/>
<path class="st1" d="M184.5,272.5c0.3,0.7,1.1,1,1.8,0.8l42.2-9.1l-18.8-18.7l-25,25C184.2,271,184.1,271.8,184.5,272.5z"/>
<path class="st1" d="M394,169.3l-26.6-26.6c-1-1-1-2.6,0-3.6l34.4-34.4c-16.4-13.8-41-11.7-54.8,4.8c-13.8,16.4-11.7,41,4.8,54.8
	C363.6,174.1,380.2,176.1,394,169.3z"/>
<path class="st1" d="M415.8,134.5c0-9.7-3.6-19.1-10.2-26.2l-32.7,32.7l25.8,25.8c2.1-1.4,4-3,5.8-4.7
	C411.7,154.7,415.8,144.8,415.8,134.5z M400.4,146.2c-1.3-1-1.5-2.9-0.4-4.2c2.2-2.7,2.7-6.5,1.1-9.6c-0.5-1.6,0.4-3.3,2-3.8
	c1.2-0.4,2.6,0.1,3.3,1.1c2.6,5.2,1.9,11.5-1.8,16.1C403.5,147,401.7,147.2,400.4,146.2L400.4,146.2z"/>
<path class="st1" d="M332.3,170.8l-94.7,94.7l12.6,12.5l100.2-88c5.5-4.8,6-13.2,1.2-18.6c-0.2-0.2-0.4-0.4-0.6-0.6
	C345.8,165.6,337.4,165.6,332.3,170.8z"/>
<path class="st1" d="M160.5,396.9l-4.3-18.5c-0.5-2.2,0.5-4.4,2.5-5.5l0,0c45.4-22.8,82-46.2,108.8-69.7l-18.6-18.7l-38.8,8.4
	l-80.2,80.2l6.3,6.3l19.9,19.9c1,1,2.7,1,3.8,0C160.4,398.7,160.7,397.8,160.5,396.9L160.5,396.9z"/>
<path class="st1" d="M107,399.8l45.3,3.1l-26-26.1L106.1,397c-0.6,0.6-0.6,1.7,0,2.3C106.3,399.6,106.7,399.7,107,399.8L107,399.8z"
	/>
<path class="st1" d="M244.6,280.3l-10.9-10.9l-13.8,13.8c-0.5,0.5-0.5,1.4,0,1.9c0.3,0.3,0.8,0.4,1.2,0.4L244.6,280.3z"/>
<path class="st0" d="M406.4,129.8c-1-1.3-2.8-1.7-4.2-0.7c-1.1,0.8-1.5,2.1-1.1,3.3c1.5,3.1,1.1,6.9-1.1,9.6c-1,1.3-0.8,3.2,0.5,4.2
	c0.5,0.4,1.1,0.6,1.8,0.6c0.9,0,1.7-0.4,2.3-1.1C408.3,141.3,409,135,406.4,129.8z"/>
</svg>
EOF
cat <<EOF > /opt/Postman/postman.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Postman
Icon=/opt/Postman/postman.svg
Exec="/opt/Postman/Postman"
Comment=a tool for test api;
Categories=Development;tool;
Terminal=false
StartupWMClass=postman
EOF
ln -s /opt/Postman/postman.desktop /usr/share/applications/postman.desktop

ln -s /opt/Postman/app/Postman /usr/local/bin/postman
echo "install postman success!"
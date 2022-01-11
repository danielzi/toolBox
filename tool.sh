#! /bin/bash
# By Daniel.L

#颜色
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}

#工具箱合集
#JCNF 工具箱
function jcnfBox(){
	wget -O jcnfbox.sh https://raw.githubusercontent.com/Netflixxp/jcnf-box/main/jcnfbox.sh && chmod +x jcnfbox.sh && clear && ./jcnfbox.sh
}

#SKY-BOX 工具箱
function skyBox(){
	wget -O box.sh https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/box.sh && chmod +x box.sh && clear && ./box.sh
}

#SKY-BOX ARM工具箱
function skyBoxArm(){
	wget -O box.sh https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/armbox.sh && chmod +x box.sh && clear && ./box.sh
}

#获取本机IP
function getip(){
	echo  
	curl ip.p3terx.com
	echo
}

#XrayR 后端
function xrayR(){
	apt-get install git -y
	git clone https://github.com/XrayR-project/XrayR-release
}

#Netflix 检测
function nfVerify(){
	wget -O nf https://github.com/sjlleo/netflix-verify/releases/download/2.61/nf_2.61_linux_amd64 && chmod +x nf && clear && ./nf
}

#Docker compose 安装
function dockerCompose(){
	curl -fsSL https://get.docker.com | bash -s docker
	curl -L "https://github.com/docker/compose/releases/download/1.26.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
	chmod +x /usr/local/bin/docker-compose
}

#BBR一键管理脚本
function tcpsh(){
	wget -O "/root/tcp.sh" "https://raw.githubusercontent.com/BlueSkyXN/ChangeSource/master/tcp.sh" --no-check-certificate -T 30 -t 5 -d
	chmod +x "/root/tcp.sh"
	chmod 777 "/root/tcp.sh"
	blue "下载完成"
	blue "你也可以输入 bash /root/tcp.sh 来手动运行"
	bash "/root/tcp.sh"
}

#ChangeSource Linux换源脚本·下载
function cssh(){
	wget -O "/root/changesource.sh" "https://raw.githubusercontent.com/BlueSkyXN/ChangeSource/master/changesource.sh" --no-check-certificate -T 30 -t 5 -d
	chmod +x "/root/changesource.sh"
	chmod 777 "/root/changesource.sh"
	blue "下载完成"
	echo
	green "请自行输入下面命令切换对应源"
	green " =================================================="
	echo
	green " bash changesource.sh 切换推荐源 "
	green " bash changesource.sh cn  切换中科大源 "
	green " bash changesource.sh aliyun 切换阿里源 "
	green " bash changesource.sh 163 切换网易源 "
	green " bash changesource.sh aws 切换AWS亚马逊云源 "
	green " bash changesource.sh restore 还原默认源 "
}

#Lemonbench 综合测试
function Lemonbench(){
curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
}

#三网Speedtest测速
function 3speed(){
bash <(curl -Lso- https://raw.githubusercontent.com/BlueSkyXN/SpeedTestCN/main/superspeed.sh)
}

#Superbench 综合测试
function superbench(){
wget -O "/root/superbench.sh" "https://raw.githubusercontent.com/BlueSkyXN/ChangeSource/master/superbench.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/superbench.sh"
chmod 777 "/root/superbench.sh"
blue "下载完成"
bash "/root/superbench.sh"
}

#MTP&TLS 一键脚本
function mtp(){
wget -O "/root/mtp.sh" "https://raw.githubusercontent.com/sunpma/mtp/master/mtproxy.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/mtp.sh"
chmod 777 "/root/mtp.sh"
blue "你也可以输入 bash /root/mtp.sh 来手动运行"
blue "下载完成"
bash "/root/mtp.sh"
}

#NEZHA.SH哪吒面板/探针·下载
function nezha(){
	curl -L https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh  -o nezha.sh && chmod +x nezha.sh
	sudo ./nezha.sh
}

#transmission-daemon 3.0
function transmissionV6(){
	sudo apt-get install -y software-properties-common
	sudo add-apt-repository -y ppa:transmissionbt/ppa
	sudo apt-get -y update
	sudo apt-get install -y transmission-daemon
	service transmission-daemon start
	service transmission-daemon stop
	sed -i 's/^.*"rpc-whitelist-enabled".*$/    "rpc-whitelist-enabled": false,/g' /etc/transmission-daemon/settings.json
	sed -i 's/^.*"dht-enabled".*$/    "dht-enabled": false,/g' /etc/transmission-daemon/settings.json
	sed -i 's/^.*"rpc-username".*$/    "rpc-username": "danielzi",/g' /etc/transmission-daemon/settings.json
	sed -i 's/^.*"rpc-password".*$/    "rpc-password": "123456",/g' /etc/transmission-daemon/settings.json
	sed -i 's/^.*"rpc-bind-address".*$/    "rpc-bind-address": "::",/g' /etc/transmission-daemon/settings.json
	service transmission-daemon start
}

function transmissionV4(){
	sudo apt-get install -y software-properties-common
	sudo add-apt-repository -y ppa:transmissionbt/ppa
	sudo apt-get -y update
	sudo apt-get install -y transmission-daemon
	service transmission-daemon start
	service transmission-daemon stop
	sed -i 's/^.*"rpc-whitelist-enabled".*$/    "rpc-whitelist-enabled": false,/g' /etc/transmission-daemon/settings.json
	sed -i 's/^.*"dht-enabled".*$/    "dht-enabled": false,/g' /etc/transmission-daemon/settings.json
	sed -i 's/^.*"rpc-username".*$/    "rpc-username": "danielzi",/g' /etc/transmission-daemon/settings.json
	sed -i 's/^.*"rpc-password".*$/    "rpc-password": "123456",/g' /etc/transmission-daemon/settings.json
	service transmission-daemon start
}

function transmissionUI(){
	wget https://github.com/ronggang/transmission-web-control/raw/master/release/install-tr-control-cn.sh
	bash ./install-tr-control-cn.sh
}

function qinglong(){
	mkdir qinglong
	cd qinglong
	# 下载docker-compose.yml文件
	wget https://raw.githubusercontent.com/whyour/qinglong/develop/docker-compose.yml
	# 启动
	docker-compose up -d
}

function ipv6dns(){
	echo -e "nameserver 2001:67c:2b0::4\nnameserver 2001:67c:2b0::6" > /etc/resolv.conf
}

function qbittorrent(){
	sudo apt-get install software-properties-common -y
	sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
	sudo apt-get update && sudo apt-get install qbittorrent-nox -y
	
	sudo apt-get install vim -y && vim /etc/systemd/system/qbittorrent-nox.service
	sed-i 'Description=qBittorrent-nox'  /etc/systemd/system/qbittorrent-nox.service
	sed-i 'After=network.target'  /etc/systemd/system/qbittorrent-nox.service
	sed-i 'User=root'  /etc/systemd/system/qbittorrent-nox.service
	sed-i 'Type=forking'  /etc/systemd/system/qbittorrent-nox.service
	sed-i 'RemainAfterExit=yes'  /etc/systemd/system/qbittorrent-nox.service
	sed-i 'ExecStart=/usr/bin/qbittorrent-nox -d'  /etc/systemd/system/qbittorrent-nox.service
	sed-i 'WantedBy=multi-user.target'  /etc/systemd/system/qbittorrent-nox.service
	
	sudo systemctl daemon-reload
	sudo systemctl start qbittorrent-nox
	sudo systemctl enable qbittorrent-nox
}

#主菜单
function start_menu(){
	clear
	red " Daniel.L 常用脚本包 1.0" 
	green " https://github.com/danielzi/toolBox "
	green " TG频道 https://t.me/Daniel_Liao "
	
	yellow " =======工具箱合集=============================== "
	green " 1. JCNF 工具箱 "
	green " 2. SKY-BOX 工具箱 "
	green " 3. SKY-BOX ARM工具箱 "
	
	yellow " ----------------------------------------------- "
	green " 10. 获取本机IP "
	green " 11. Netflix 检测 sjlleo版 "
	green " 12. Lemonbench 综合测试 "
	green " 13. 三网Speedtest测速 "
	green " 14. Superbench 综合测试 "
	green " 15. 添加IPV6 DNS "
	

   	yellow " ----------------------------------------------- "
	green " 20. Linux换源脚本·下载 "
	green " 21. Docker compose 安装 "
	green " 22. 哪吒面板 "
	green " 23. Transmission IPV6 "
	green " 24. Transmission IPV4 "
	green " 25. Transmission UI "
	green " 26. 青龙面板 "
	green " 27. Qbittorrent "
	yellow " ----------------------------------------------- "
	green " 30. BBR一键管理脚本 "
	green " 31. XrayR 后端 "
	green " 32. MTP&TLS 一键脚本 "
	
	yellow " =============================================== "
	green " 0. 退出脚本"
    echo
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in
        1 )
           jcnfBox
	;;
        2 )
           skyBox
	;;
	3 )
           skyBoxArm
	;;
	10 )
           getip
	;;
	11 )
           nfVerify
	;;
	12 )
           Lemonbench
	;;
	13 )
           3speed
	;;
	14 )
           superbench
	;;
	15 )
           ipv6dns
	;;
	20 )
           cssh
	;;
	21 )
           dockerCompose
	;;
	22 )
           nezha
	;;
	23 )
           transmissionV6
	;;
	24 )
           transmissionV4
	;;
	25 )
           transmissionUI
	;;
	26 )
           qinglong
	;;
	27 )
           qbittorrent
	;;
	30 )
           tcpsh
	;;
	31 )
           xrayR
	;;
	32 )
           mtp
	;;
        0 )
            exit 1
        ;;
        * )
            clear
            red "请输入正确数字 !"
            start_menu
        ;;
    esac
}


start_menu "first"

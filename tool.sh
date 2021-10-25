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
wget -O "/root/nezha.sh" "https://raw.githubusercontent.com/BlueSkyXN/nezha/master/script/install.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/nezha.sh"
chmod 777 "/root/nezha.sh"
blue "你也可以输入 bash /root/nezha.sh 来手动运行"
blue "下载完成"
bash "/root/nezha.sh"
}

#主菜单
function start_menu(){
	clear
	red " Daniel.L 常用脚本包 " 
	green " https://github.com/danielzi/toolBox "
	green " TG频道 https://t.me/Daniel_Liao "
	
	yellow " =======工具箱合集=============================== "
	green " 1. JCNF 工具箱 "
	green " 2. SKY-BOX 工具箱 "
	green " 3. SKY-BOX ARM工具箱 "
	
	yellow " ----------------------------------------------- "
	green " 10. 获取本机IP "
	green " 11. Netflix 检测 sjlleo版 "

   	yellow " ----------------------------------------------- "
	green " 20. Docker compose 安装 "
	
	yellow " ----------------------------------------------- "
	green " 30.BBR一键管理脚本 "
	green " 31. XrayR 后端 "
	
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
	4 )
           xrayR
	;;
	5 )
           nfVerify
	;;
	6 )
           dockerCompose
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

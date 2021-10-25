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

#主菜单
function start_menu(){
	clear
	red " Daniel.L 常用脚本包 " 
	green " https://github.com/danielzi/toolBox "
	green " TG频道 https://t.me/Daniel_Liao "
	
	yellow " =======工具箱合集============================== "
	green " 1. JCNF 工具箱 "
	green " 2. SKY-BOX 工具箱"
	green " 3. SKY-BOX ARM工具箱"
   
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

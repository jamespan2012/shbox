#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
Green_font="\033[32m" && Red_font="\033[31m" && Font_suffix="\033[0m"
Info="${Green_font}[Info]${Font_suffix}"
Error="${Red_font}[Error]${Font_suffix}"
echo -e "${Green_font}
#======================================
# Project: shbox
# Version: 0.0.3
# 推荐机场:   垃圾场加速器
# 注册地址:   https://lajic.eu/index.php#/register?code=OAM8uBQl
#======================================
${Font_suffix}"

check_root(){
	[[ "`id -u`" != "0" ]] && echo -e "${Error} must be root user !" && exit 1
}

first(){
	
	apt update -y
	apt install  -y git tmux screen nano vim curl net-tools wget sudo proxychains iperf3 lsof conntrack openssl unzip lsb-release jq ca-certificates bash-completion iptables netcat-openbsd && update-ca-certificates
	bash <(curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/tcping.sh)
	bash <(curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/bashrc.sh)
	git clone https://ghproxy.com/https://github.com/iiiiiii1/doubi.git
	git clone https://ghproxy.com/https://github.com/hulisang/Port-forwarding.git
	git clone https://ghproxy.com/https://github.com/vpsxb/EasyRealM.git
	git clone https://ghproxy.com/https://github.com/seal0207/EasyRealM.git
	bash <(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/P3TERX/script/master/speedtest-cli.sh)
	apt install python python3-pip -y

}

doc(){
	
	wget -qO- get.docker.com | bash

}

proxy(){
	select_proxy
	set_proxy
}

select_proxy(){
	echo -e "${Info} 选择需要安装魔法: \n1.multi-v2ray\n2.x-ui\n3.docker版x-ui\n4.docker版v2ray(需自行修改配置文件)\n5.docker版xray(需自行修改配置文件)"
	read -p "输入数字以选择:" kxsw

	while [[ ! "${kxsw}" =~ ^[1-5]$ ]]
		do
			echo -e "${Error} 无效输入"
			echo -e "${Info} 请重新选择" && read -p "输入数字以选择:" kxsw
		done
}

set_proxy(){
	[[ "${kxsw}" == "1" ]] && multi-v2ray
	[[ "${kxsw}" == "2" ]] && x-ui
	[[ "${kxsw}" == "3" ]] && x-ui-docker
	[[ "${kxsw}" == "4" ]] && v2ray-docker
	[[ "${kxsw}" == "5" ]] && xray-docker
}

multi-v2ray(){
	
	source <(curl -fsSL https://raw.githubusercontent.com/Jrohy/multi-v2ray/master/v2ray.sh) --zh

}

x-ui(){
	
	bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)

}

x-ui-docker(){
	
	docker run -itd --network=host -v /root/x-ui/db/:/etc/x-ui/ -v /root/x-ui/cert/:/root/cert/ --name x-ui --restart=unless-stopped enwaiax/x-ui:latest

}

v2ray-docker(){
	
	mkdir -p /root/v2ray
	wget -O /root/v2ray/config.json https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/config-v2ray.json
	docker run -d --network host --name v2ray --restart=always -v /root/v2ray:/etc/v2ray teddysun/v2ray

}

xray-docker(){
	
	mkdir -p /root/xray
	wget -O /root/xray/config.json https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/config-xray.json
	docker run -d --network host --name xray --restart=always -v /root/xray:/etc/xray teddysun/xray

}

hc(){
	
	bash <(curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/jcnf.sh)

}

ihc(){
	
	bash <(curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/ijcnf.sh)

}

tcpx(){
	
	bash <(curl -fsSL https://git.io/JYxKU)

}

ddxt(){
	
	bash <(curl -fsSL https://raw.githubusercontent.com/hiCasper/Shell/master/AutoReinstall.sh)

}

nfcheck(){
	
	bash <(curl -fsSL https://raw.githubusercontent.com/lmc999/RegionRestrictionCheck/main/check.sh)

}

yabs(){
	
	bash <(curl -fsSL yabs.sh)

}

lb(){
	
	curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/LemonBench.sh | bash -s fast

}

superbench(){
	
	bash <(curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/superbench.sh)

}

speed(){
	
	curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/superbench.sh | bash -s speed

}

io(){
	
	curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/superbench.sh | bash -s io

}

ipcheck(){
	
	curl ip.p3terx.com -4
	curl ip.p3terx.com -6

}

tz(){
	
	bash <(curl -fsSL https://raw.githubusercontent.com/cokemine/ServerStatus-Hotaru/master/status.sh)

}

jg(){
	
	bash <(curl -fsSL https://raw.githubusercontent.com/Aurora-Admin-Panel/deploy/main/install.sh)

}

xd(){
	
	bash <(curl -fsSL https://sh.xdmb.xyz/xiandan/xd.sh)

}

lnmps(){
	select_alternative
	set_alternative
}

select_alternative(){
	echo -e "${Info} 选择需要安装的lnmp: \n1.宝塔\n2.LNMP\n3.oneinstack\n4.aapanel"
	read -p "输入数字以选择:" lnmp

	while [[ ! "${lnmp}" =~ ^[1-4]$ ]]
		do
			echo -e "${Error} 无效输入"
			echo -e "${Info} 请重新选择" && read -p "输入数字以选择:" lnmp
		done
}

set_alternative(){
	[[ "${lnmp}" == "1" ]] && bt
	[[ "${lnmp}" == "2" ]] && lnmp
	[[ "${lnmp}" == "3" ]] && oneinstack
	[[ "${lnmp}" == "4" ]] && aapanel
}

bt(){

	bash <(curl -fsSL http://download.bt.cn/install/install-ubuntu_6.0.sh)
	
}

aapanel(){

	wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && bash install.sh aapanel
	
}

lnmp(){
	
	apt update -y && apt-get -y install wget screen #for Debian/Ubuntu
	wget http://soft.vpser.net/lnmp/lnmp1.9beta.tar.gz -cO lnmp1.9beta.tar.gz && tar zxf lnmp1.9beta.tar.gz
	rm zxf lnmp1.9beta.tar.gz -rf && cd lnmp1.9
	screen ./install.sh

}

oneinstack(){
	
	apt update -y && apt-get -y install wget screen #for Debian/Ubuntu
	wget http://mirrors.linuxeye.com/oneinstack-full.tar.gz -cO oneinstack-full.tar.gz
	tar xzf oneinstack-full.tar.gz && rm oneinstack-full.tar.gz -rf
	cd oneinstack #如果需要修改目录(安装、数据存储、Nginx日志)，请修改options.conf文件
	screen ./install.sh

}

update_debian(){

	bash <(curl -sSL https://raw.githubusercontent.com/wikihost-opensource/linux-toolkit/main/system-upgrade/debian.sh)
	
}

check_root

echo -e "${Info} 选择你要使用的功能: "
echo -e "1.首次运行\n2.安装docker\n3.安装bbr\n4.魔法上网\n5.回程路由(TCP)\n6.回程路由(ICMP)\n7.流媒体测试\n8.superbench\n9.yabs\n10.LemonBench\n11.IO测试\n12.全网测速\n13.探针安装\n14.本地IP\n15.极光面板\n16.闲蛋面板\n17.DD系统\n18.建站环境\n19.升级Debian(自动执行谨慎操作)"
read -p "输入数字以选择:" function

	while [[ ! "${function}" =~ ^([1-9]|1[0-9])$ ]]
		do
			echo -e "${Error} 缺少或无效输入"
			echo -e "${Info} 请重新选择" && read -p "输入数字以选择:" function
		done

	if [[ "${function}" == "1" ]]; then
		first
	elif [[ "${function}" == "2" ]]; then
		doc
	elif [[ "${function}" == "3" ]]; then
		tcpx
	elif [[ "${function}" == "4" ]]; then
		proxy
	elif [[ "${function}" == "5" ]]; then
		hc
	elif [[ "${function}" == "6" ]]; then
		ihc
	elif [[ "${function}" == "7" ]]; then
		nfcheck
	elif [[ "${function}" == "8" ]]; then
		superbench
	elif [[ "${function}" == "9" ]]; then
		yabs
	elif [[ "${function}" == "10" ]]; then
		lb
	elif [[ "${function}" == "11" ]]; then
		io
	elif [[ "${function}" == "12" ]]; then
		speed
	elif [[ "${function}" == "13" ]]; then
		tz
	elif [[ "${function}" == "14" ]]; then
		ipcheck
	elif [[ "${function}" == "15" ]]; then
		jg
	elif [[ "${function}" == "16" ]]; then
		xd
	elif [[ "${function}" == "17" ]]; then
		ddxt
	elif [[ "${function}" == "18" ]]; then
		lnmps
	elif [[ "${function}" == "19" ]]; then
		update_debian
	else
		echo -e "${Info} 请重新选择" && read -p "输入数字选择:" function
	fi

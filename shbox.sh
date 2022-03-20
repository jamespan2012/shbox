#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
Green_font="\033[32m" && Red_font="\033[31m" && Font_suffix="\033[0m"
Info="${Green_font}[Info]${Font_suffix}"
Error="${Red_font}[Error]${Font_suffix}"
echo -e "${Green_font}
#======================================
# Project: shbox
# Version: 0.0.1
# Blog:   https://vpsxb.net/1642/
#======================================
${Font_suffix}"

check_root(){
	[[ "`id -u`" != "0" ]] && echo -e "${Error} must be root user !" && exit 1
}

first(){
	
	apt update -y
	apt install git tmux nano vim curl net-tools wget sudo proxychains iperf3 lsof conntrack openssl unzip lsb-release jq ca-certificates python iptables -y && update-ca-certificates
	bash <(curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/tcping.sh)
	bash <(curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/bashrc.sh)
	git clone https://github.com/ToyoDAdoubi/doubi.git
	git clone https://github.com/hulisang/Port-forwarding.git
	git clone https://github.com/KANIKIG/Multi-EasyGost.git
	git clone https://github.com/seal0207/EasyRealM.git
	bash <(curl -fsSL git.io/speedtest-cli.sh)

}

d0c(){
	
	wget -qO- get.docker.com | bash

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

hc(){
	
	bash <(curl -fsSL https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/jcnf.sh)

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
	
	curl -fsSL http://ilemonra.in/LemonBenchIntl | bash -s fast

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

check_root

echo -e "${Info} 选择你要使用的功能: "
echo -e "1.首次运行\n2.安装docker\n3.安装bbr\n4.回程路由\n5.安装multi-v2ray\n6.安装x-ui\n7.安装docker版x-ui\n8.流媒体测试\n9.superbench\n10.yabs\n11.LemonBench\n12.IO测试\n13.全网测速\n14.探针安装\n15.本地IP\n16.极光面板\n17.闲蛋面板\n18.DD系统"
read -p "输入数字以选择:" function

	while [[ ! "${function}" =~ ^([1-9]|1[0-8])$ ]]
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
		hc
	elif [[ "${function}" == "5" ]]; then
		multi-v2ray
	elif [[ "${function}" == "6" ]]; then
		x-ui
	elif [[ "${function}" == "7" ]]; then
		x-ui-docker
	elif [[ "${function}" == "8" ]]; then
		nfcheck
	elif [[ "${function}" == "9" ]]; then
		superbench
	elif [[ "${function}" == "10" ]]; then
		yabs
	elif [[ "${function}" == "11" ]]; then
		lb
	elif [[ "${function}" == "12" ]]; then
		io
	elif [[ "${function}" == "13" ]]; then
		speed
	elif [[ "${function}" == "14" ]]; then
		tz
	elif [[ "${function}" == "15" ]]; then
		ipcheck
	elif [[ "${function}" == "16" ]]; then
		jg
	elif [[ "${function}" == "17" ]]; then
		xd
	elif [[ "${function}" == "18" ]]; then
		ddxt
	else
		echo -e "${Info} 请重新选择" && read -p "输入数字以选择:" function
	fi

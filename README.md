shbox
---------------
**概述**

此脚本本人常用脚本的集合，个人使用了一段时间，感觉还不错，但是大部分脚本和文件从自己的服务器拉取的，便修改了一下，去除了从个人服务器拉取的脚本和文件，目前几乎所有脚本和文件依赖都拉取自github。
仅限Debian系系统，本人能力有限，其他系统请自行修改。
https://github.com/jamespan2012/shbox

**更新**

 - 0.0.1
 
 **一键脚本**
 
    #下载使用脚本
    wget https://raw.githubusercontent.com/jamespan2012/shbox/main/shbox.sh -O shbox.sh && bash shbox.sh

    #后续运行脚本（再次检查也仅需运行下面代码）
    bash shbox.sh
    
**功能说明**

所有脚本都来源于公开项目

- 1.首次运行会安装常用命令，安装tcping、speedtest，拉取doubi、Port-forwarding、Multi-EasyGost、EasyRealM以便于使用gost、realm。
- 2.docker版x-ui将容器目录/etc/x-ui/挂载到本地/root/x-ui/db/，将容器目录/root/cert/挂载到本地/root/x-ui/cert/。
- 3.DD脚本，如果系统重启后失联，请进vnc编辑/etc/network/interfaces文件注释掉allow-hotplug ensX，添加一行auto ensX。

输入数字选择需要进行的测试。


----------


所有脚本都来源于以下项目，本人未作任何修改

shbox https://github.com/jamespan2012/shbox
multi-v2ray https://github.com/Jrohy/multi-v2ray
x-ui https://github.com/vaxilu/x-ui
Linux-NetSpeed https://github.com/ylx2016/Linux-NetSpeed
AutoReinstall.sh https://github.com/hiCasper/Shell
RegionRestrictionCheck https://github.com/lmc999/RegionRestrictionCheck
yabs https://github.com/masonr/yet-another-bench-script
LemonBench https://blog.ilemonrain.com/linux/LemonBench.html
superbench https://github.com/jamespan2012/shbox/blob/main/dependencies/superbench.sh
ServerStatus-Hotaru https://github.com/cokemine/ServerStatus-Hotaru
Aurora-Admin-Panel https://github.com/Aurora-Admin-Panel/deploy
xd-panel https://sh.xdmb.xyz/xiandan/xd.sh


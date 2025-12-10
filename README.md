# 消耗使用CF隧道  (选定的随道域名网络要开启 gRPC) webst  支持 amd64 和 arm64 架构

https://github.com/dj56959566/NF-Koybe-Argo-Nezha-v0v1 (教程)

1.镜像:ghcr.io/dj56959566/nf/koyeb-nginx-grpc:latest

2.Northflank添加端口映射二个

p01:http 8090

p02:http/2 8091

3.我们分别为这两个端口分配不同的域名，分别为 web.example.com、data.example.com
data.example.com 负责代理和面板通信，cf中关闭CDN
web.example.com负责页面访问，cf中可以开启或关闭cdn，northflank如果被Q，则需要开启

4.面板系统设置
Agent对接地址【域名/IP:端口】
data.example.com:443
Agent 使用TLS连接勾选
使用直连IP勾选

5.复制安装命令，直接在vps安装即可

6.数据备份
手机摸索，解决方案是同步到GitHub，参考F佬的V0版本

#Northflank虽然需要绑卡，但是一般也不会扣费，比较稳定，就是邻居搞事可能导致IP被Q，这个就需要小黄运拯救一下了。

# serverjre
serverjre 是一个集成了APR和Tomcat Native运行环境的java运行环境

##### Quick Start:
```shell script
# 构建
docker build -t registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:env .

# 拉取
docker pull registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:env

# 启动：JRE现在不包含在容器中，需要挂载
docker run -d -p 8080:8080 -v /root/jdk1.8.0_311:/usr/local/jdk -v /app:/app --restart always --name app registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:env
```

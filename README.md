# serverjre
serverjre 是一个集成了APR和Tomcat Native运行环境的java运行环境

##### Quick Start:
```shell script
# 构建
docker build -t registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:env .

# 拉取
docker pull registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:env

# 设置软连接
ln -sf your.app.jar app.jar

# 启动：JRE现在不包含在容器中，需要挂载
docker run -d -p 8080:8080 -v /your/jdk:/usr/local/jdk -v /your/app/path:/app --restart always --name app registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:env
```

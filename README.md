### serverjre
serverjre 是一个集成了APR和Tomcat Native运行环境的java运行环境

##### Quick Start:
```shell script
# 构建
docker build -t serverjre:tag .

# 启动: JRE现在不包含在容器中，需要挂载
docker run -d -p 8080:8080 -v /root/jdk-11.0.12+7:/usr/local/jdk -v /root/system-quick-start-1.0.0.jar:/app/app.jar --name app serverjre:tag
docker run -d -p 8080:8080 -v /root/jdk8-312:/usr/local/jdk -v /home/scty/cube/system-quick-start-1.0.0.jar:/app/app.jar -v /home/scty/cube/application-dev.yml:/app --name cube-java registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:env

# 从阿里云拉取
docker pull registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:env
```

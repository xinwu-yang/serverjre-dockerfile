### serverjre
serverjre 是一个集成了APR和Tomcat Native运行环境的java运行环境

##### Quick Start:
```shell script
docker build -t serverjre:tag .

# JRE现在不包含在容器中，需要挂载
docker run -d -p 8080:8080 -v /root/jdk-11.0.12+7:/usr/local/jdk -v /root/system-quick-start-1.0.0.jar:/app/app.jar --name app serverjre:tag
```

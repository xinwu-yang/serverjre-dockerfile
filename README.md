### serverjre
serverjre 是一个集成了APR和Tomcat Native运行环境的java运行环境

##### Quick Start:
```shell script
docker build -t serverjre:11 .

# jdk11现在不包含在容器中，需要挂载
docker run -v /home/yxw/docker/jdk11 /usr/local/jdk -it serverjre:11 /bin/bash
```


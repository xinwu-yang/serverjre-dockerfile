# serverjre
serverjre 是一个集成了APR和Tomcat Native运行环境的java运行环境

##### lib

- Tomcat Native 1.2.33

##### quick start:
```shell script
# 构建
docker build -t registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:22.04 .

# 拉取
docker pull registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:22.04

# 设置软连接
ln -sf your.app.jar app.jar

# 启动：JRE现在不包含在容器中，需要挂载
# 替换/your/jdk 和 /your/app/path 为实际项目的jdk路径和部署包路径
docker run -d -p 8080:8080 -v /your/jdk:/usr/local/jdk -v /your/app/path:/app --restart always --name app registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:22.04
```

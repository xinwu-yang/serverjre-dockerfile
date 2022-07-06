# serverjre

serverjre 是一个以centos7为基础，集成了 **Apache Portable Runtime**、**Apache Tomcat Native** 以及中文字体的Java运行环境镜像。

##### libs

- Apache Tomcat Native 1.2.34
- Apache Portable Runtime 1.7.0
- OpenSSL 1.0.2k

#### fonts

- simsun

##### quick start:

```shell script
# 构建
docker build -t registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:centos7 .

# 拉取
docker pull registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:centos7

# 设置软连接
ln -sf your.app.jar app.jar

# 启动：JRE现在不包含在容器中，需要挂载
# 替换/your/jdk 和 /your/app/path 为实际项目的jdk路径和部署包路径
docker run -d -p 8080:8080 -v /your/jdk:/usr/local/jdk -v /your/app/path:/app --restart always --name app registry.cn-chengdu.aliyuncs.com/yousinnmu/serverjre:centos7
```

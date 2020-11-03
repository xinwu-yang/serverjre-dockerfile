FROM centos:8

RUN yum update -y && yum install -y gcc redhat-rpm-config make openssl-devel apr-devel vim

ADD server-jre-8u271-linux-x64.tar.gz /usr/local

ADD tomcat-native-1.2.25-src.tar.gz /usr/local

RUN cd /usr/local/tomcat-native-1.2.25-src/native && ./configure --with-java-home=/usr/local/jdk1.8.0_271 --with-ssl=yes && make -j8 && make install

RUN yum remove -y gcc redhat-rpm-config make && rm -rf /usr/local/tomcat-native-1.2.25-src

ENV JAVA_HOME /usr/local/jdk1.8.0_271

ENV CLASSPATH=$JAVA_HOME/bin

ENV PATH=.:$JAVA_HOME/bin:$PATH

ENV JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8 -Duser.timezone=GMT+8 -Duser.language=en -Duser.country=US -Djava.library.path=/usr/local/apr/lib

CMD ["java", "-version"]
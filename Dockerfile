FROM centos:7

ENV TZ Asia/Shanghai

RUN yum install -y fontconfig

ADD lib/* /usr/lib64/

ADD font/* /usr/share/fonts/chinese/

RUN fc-cache -f -v

VOLUME [ "/usr/local/jdk", "/app" ]

ENV JAVA_HOME /usr/local/jdk

ENV CLASSPATH $JAVA_HOME/bin

ENV PATH .:$JAVA_HOME/bin:$PATH

ENV JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8 -Duser.timezone=GMT+8 -Duser.language=en -Duser.country=US -Djava.library.path=/usr/lib64

WORKDIR '/app'

CMD ["java", "-jar", "/app/app.jar"]
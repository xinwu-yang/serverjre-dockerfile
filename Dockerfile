FROM ubuntu:20.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y libssl-dev libapr1 libapr1-dev vim

ADD lib/* /usr/lib/x86_64-linux-gnu/

ENV JAVA_HOME /usr/local/jdk

ENV CLASSPATH=$JAVA_HOME/bin

ENV PATH=.:$JAVA_HOME/bin:$PATH

ENV JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8 -Duser.timezone=GMT+8 -Duser.language=en -Duser.country=US -Djava.library.path=/usr/lib/x86_64-linux-gnu

CMD ["java", "-version"]
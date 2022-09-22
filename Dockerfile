FROM summerwind/actions-runner-dind-rootless

WORKDIR /tmp

RUN curl -O https://download.java.net/java/GA/jdk18/43f95e8614114aeaa8e8a5fcf20a682d/36/GPL/openjdk-18_linux-x64_bin.tar.gz && tar xvf openjdk-18_linux-x64_bin.tar.gz && mv jdk-18 /home/runner/

ENV JAVA_HOME=/home/runner/jdk-18
ENV PATH=$PATH:$JAVA_HOME/bin

WORKDIR /runnertmp

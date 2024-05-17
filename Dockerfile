FROM alpine:latest

ENV JDK_VERSION "17.0.11"

RUN apk add --update ca-certificates unzip

RUN wget https://github.com/SAP/SapMachine/releases/download/sapmachine-${JDK_VERSION}/sapmachine-jdk-${JDK_VERSION}_linux-x64-musl_bin.tar.gz

RUN mkdir -p /usr/lib/jvm/

RUN tar -xzf "sapmachine-jdk-${JDK_VERSION}_linux-x64-musl_bin.tar.gz" -C /usr/lib/jvm/

RUN rm sapmachine-jdk-${JDK_VERSION}_linux-x64-musl_bin.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/sapmachine-jdk-${JDK_VERSION}

ENV PATH=$JAVA_HOME/bin:$PATH
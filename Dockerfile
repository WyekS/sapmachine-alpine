FROM alpine:latest

ENV JDK_VERSION="21.0.10"

RUN apk add --update ca-certificates curl unzip

RUN curl -L -k "https://github.com/SAP/SapMachine/releases/download/sapmachine-${JDK_VERSION}/sapmachine-jdk-${JDK_VERSION}_linux-x64-musl_bin.tar.gz" \
    -o "sapmachine-jdk-${JDK_VERSION}_linux-x64-musl_bin.tar.gz"

RUN mkdir -p /usr/lib/jvm/sapmachine-jdk

RUN tar -xzf "sapmachine-jdk-${JDK_VERSION}_linux-x64-musl_bin.tar.gz" \
    -C /usr/lib/jvm/sapmachine-jdk --strip-components=1

RUN rm sapmachine-jdk-${JDK_VERSION}_linux-x64-musl_bin.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/sapmachine-jdk

ENV PATH=$JAVA_HOME/bin:$PATH
FROM maven:3.6.3-jdk-8-slim
WORKDIR /root
RUN apt-get update && apt-get install -y git unzip
RUN git clone https://github.com/TopQuadrant/shacl
WORKDIR /root/shacl
RUN mvn clean install
RUN cd target && unzip -d out  shacl*-bin.zip && chmod 777 out/shacl*-SNAPSHOT/bin/* && cd out && mv shacl*-SNAPSHOT/* .
WORKDIR /root/shacl/target/out/bin/
ENV SHACL_HOME=/root/shacl/target/out/


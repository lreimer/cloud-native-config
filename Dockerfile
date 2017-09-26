FROM qaware-oss-docker-registry.bintray.io/base/alpine-k8s-openjdk8:8u121
MAINTAINER Mario-Leander Reimer <mario-leander.reimer@qaware.de>

RUN mkdir -p /opt/cloud-native-config

COPY build/libs/cloud-native-config-1.1.0.jar /opt/cloud-native-config/cloud-native-config.jar
RUN chmod 755 /opt/cloud-native-config/cloud-native-config.jar

EXPOSE 8888
CMD /opt/cloud-native-config/cloud-native-config.jar

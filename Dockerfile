FROM qaware-oss-docker-registry.bintray.io/base/alpine-k8s-ibmjava8:8.0-3.10
MAINTAINER Mario-Leander Reimer <mario-leander.reimer@qaware.de>

RUN mkdir -p /opt/cloud-native-config

COPY build/libs/cloud-native-config-1.0.0.jar /opt/cloud-native-config/cloud-native-config.jar
RUN chmod 755 /opt/cloud-native-config/cloud-native-config.jar

EXPOSE 8888
CMD /opt/cloud-native-config/cloud-native-config.jar
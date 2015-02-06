# WSO2 Identity Manager

FROM vertigo/docker-java:latest

MAINTAINER Andre Fernandes

WORKDIR /opt

# wget -O wso2is.zip http://product-dist.wso2.com/products/identity-server/5.0.0/wso2is-5.0.0.zip
RUN wget -q -O /opt/wso2is.zip http://172.17.42.1/wso2is-5.0.0.zip && \
    unzip /opt/wso2is.zip && \
    rm /opt/wso2is.zip && \
    ln -s wso2is-5.0.0 wso2is

ADD startwso2is.sh /opt/startwso2is.sh
ADD initwso2repo.sh /opt/initwso2repo.sh

RUN chmod +x /opt/startwso2is.sh && \
    chmod +x /opt/initwso2repo.sh

EXPOSE 9443 9763

VOLUME /opt/wso2is/repository

CMD /opt/startwso2is.sh

WSO2 Identity Service
=====================

WSO2 Identity in a container.

### Data volumes

You must mount the "/opt/wso2is/repository" in a host folder or in a data volume
in order to preserve configuration between runs.

Since a mounted folder will be initially empty there is a script you can invoke
to initialize it with a clean "post-install" repository. The example below
will create a clean repository at the host's "/opt/data/wso2is" folder:

    docker run --rm -v /opt/data/wso2is:/opt/data/wso2is vertigo/docker-wso2is:latest /opt/initwso2repo.sh

### How to use it

Just call it properly exposing ports and mounting folders:

    docker run -d --name wso2is \
       -p 9763:9763 \
       -p 9443:9443 \
       -v /opt/data/wso2is/repository:/opt/wso2is/repository \
       vertigo/docker-wso2is:latest


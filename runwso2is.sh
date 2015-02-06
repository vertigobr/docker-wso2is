#!/bin/bash
docker run -d --name wso2is \
   -p 9763:9763 \
   -p 9443:9443 \
   -v /opt/data/wso2is/repository:/opt/wso2is/repository \
   vertigo/docker-wso2is:latest

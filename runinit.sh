#!/bin/bash
docker run --rm -v /opt/data/wso2is:/opt/data/wso2is vertigo/docker-wso2is:latest /opt/initwso2repo.sh

#!/bin/bash
sed 's/nohup bash/exec/g' -i /opt/wso2is/bin/wso2server.sh
sed 's/> \/dev\/null 2>&1 &//g' -i /opt/wso2is/bin/wso2server.sh
exec /opt/wso2is/bin/wso2server.sh start

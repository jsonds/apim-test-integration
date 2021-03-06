#!/bin/bash

# Copyright (c) 2018, WSO2 Inc. (http://wso2.com) All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

serverHost=$serverHost
serverPort=$serverPort
msf4jServiceHost=ms4fjServerHostTBD
msf4jServicePort=8080

prgdir=$(dirname "$0")
scriptPath=$(cd "$prgdir"; pwd)

echo "working directory : "$scriptPath

#updating jmeter properties - user.properties
sed -i "s|^\(serverHost\s*=\s*\).*\$|\1${serverHost}|" $scriptPath/../resources/user.properties
sed -i "s|^\(serverPort\s*=\s*\).*\$|\1${serverPort}|" $scriptPath/../resources/user.properties
sed -i "s|^\(msf4jServiceHost\s*=\s*\).*\$|\1${msf4jServiceHost}|" $scriptPath/../resources/user.properties
sed -i "s|^\(msf4jServicePort\s*=\s*\).*\$|\1${msf4jServicePort}|" $scriptPath/../resources/user.properties
#run base-setup.sh
source $scriptPath/../base-setup.sh > $scriptPath/basesetup.log


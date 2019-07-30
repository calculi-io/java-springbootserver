#!/bin/bash

# apt-get -y install software-properties-common
# apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
# apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
# apt-get update
# apt -y install zulu-12

if [ -f SpringBootServer.pid ]; then
	kill `cat SpringBootServer.pid`
	rm SpringBootServer.pid
fi

export JAVA_HOME=${PKG_BASE_DIR}/jdk
export PATH=${PKG_BASE_DIR}/jdk/bin:${PATH}

cp ${PKG_BASE_DIR}/server/SpringBootServer*.war .
java -jar SpringBootServer-1.0.1.war &
sleep 5
# echo $! >SpringBootServer.pid
ps -A -o pid,cmd|grep java | grep -v grep |head -n 1 | awk '{print $1}'>SpringBootServer.pid

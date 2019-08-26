#!/bin/bash

export JAVA_HOME=${PKG_BASE_DIR}/jdk
export PATH=${PKG_BASE_DIR}/jdk/bin:${PATH}

cp ${PKG_BASE_DIR}/server/SpringBootServer*.war .
java -jar SpringBootServer-1.0.0.war &
sleep 5

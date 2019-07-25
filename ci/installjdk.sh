#!/bin/bash
apt-get -y install software-properties-common
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
apt-get update
apt -y install zulu-12
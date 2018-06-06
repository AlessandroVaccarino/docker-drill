#!/bin/bash

: ${DRILL_HOME:=/opt/drill/apache-drill-1.13.0}

cd /opt/drill/apache-drill-1.13.0;
sudo bin/sqlline -u jdbc:drill:zk=local

#!/bin/bash
/opt/puppetlabs/bin/puppet agent --test 
/opt/tomcat/bin/catalina.sh start
sleep infinity

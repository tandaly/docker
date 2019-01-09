#!/bin/sh
# JAVA-OPTIONS
#JAVA_OPTS="$JAVA_OPTS -Xms128m -Xmx${heap_size}m -XX:MaxPermSize=256m -server"
# CATALINA-OPTIONS
#CATALINA_OPTS="$CATALINA_OPTS -DserverType=rdtest -DserverName=first"

#probe 
export JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote"
#!/bin/sh
# JAVA-OPTIONS
#JAVA_OPTS="$JAVA_OPTS -Xms128m -Xmx${heap_size}m -XX:MaxPermSize=256m -server"
# CATALINA-OPTIONS
CATALINA_OPTS="$CATALINA_OPTS -DserverType=rdtest -DserverName=first"

export JAVA_OPTS="$JAVA_OPTS\
 -server\
 -Xms6000m\
 -Xmx6000m\
 -XX:OnOutOfMemoryError=/usr/share/scripts/on_server_crash.sh\
 -XX:+HeapDumpOnOutOfMemoryError\
 -XX:HeapDumpPath=/var/log/tomcat\
 -XX:MaxNewSize=256m\
 -XX:NewSize=256m\
 -XX:SurvivorRatio=12\
 -XX:MaxTenuringThreshold=0\
 -XX:+UseConcMarkSweepGC\
 -XX:+CMSIncrementalMode\
 -XX:+CMSIncrementalPacing\
 -XX:+CMSClassUnloadingEnabled\
 -XX:+CMSPermGenSweepingEnabled\
 -XX:+DisableExplicitGC\
 -XX:+UseParNewGC\
 -XX:+UseTLAB\
 -Djava.awt.headless=true\
 -Duser.timezone=Asia/Shanghai\
 -Dnewrelic.environment=production"

#probe 
export JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote"
#!/bin/sh
# JAVA-OPTIONS
JAVA_OPTS="$JAVA_OPTS -Xms128m -Xmx1024m -XX:MaxPermSize=256m -server"
# CATALINA-OPTIONS
CATALINA_OPTS="$CATALINA_OPTS -DserverType=rdtest -DserverName=first"

export JAVA_OPTS="$JAVA_OPTS\
 -server\
 -Xms704m\
 -Xmx704m\
 -XX:OnOutOfMemoryError=/usr/share/scripts/on_server_crash.sh\
 -XX:+HeapDumpOnOutOfMemoryError\
 -XX:HeapDumpPath=/var/log/tomcat\
 -XX:MaxPermSize=128m\
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
 -Dnewrelic.environment=production"

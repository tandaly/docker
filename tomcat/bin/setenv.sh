#!/bin/sh
# JAVA-OPTIONS
JAVA_OPTS="$JAVA_OPTS -Xms128m -XX:MaxPermSize=256m -server"
# CATALINA-OPTIONS
CATALINA_OPTS="$CATALINA_OPTS -DserverType=rdtest -DserverName=first"

export JAVA_OPTS="$JAVA_OPTS\
 -server\ 
-Xms6000M\ 
-Xmx6000M\ 
-Xss512k\ 
-XX:NewSize=2250M\ 
-XX:MaxNewSize=2250M\ 
-XX:PermSize=128M\
-XX:MaxPermSize=256M\  
-XX:+AggressiveOpts\ 
-XX:+UseBiasedLocking\ 
-XX:+DisableExplicitGC\ 
-XX:+UseParNewGC\ 
-XX:+UseConcMarkSweepGC\ 
-XX:MaxTenuringThreshold=31\ 
-XX:+CMSParallelRemarkEnabled\ 
-XX:+UseCMSCompactAtFullCollection\ 
-XX:LargePageSizeInBytes=128m \
-XX:+UseFastAccessorMethods\ 
-XX:+UseCMSInitiatingOccupancyOnly\
-Duser.timezone=Asia/Shanghai\ 
-Djava.awt.headless=true\
 -Dnewrelic.environment=production"

#probe 
export JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote"
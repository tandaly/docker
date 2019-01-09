#!/bin/sh
# JAVA-OPTIONS
#https://blog.csdn.net/wcg805/article/details/83062639
#JAVA_OPTS="$JAVA_OPTS -Xms128m -Xmx${heap_size}m -XX:MaxPermSize=256m -server"
# CATALINA-OPTIONS
#CATALINA_OPTS="$CATALINA_OPTS -DserverType=rdtest -DserverName=first"

JAVA_OPTS="$JAVA_OPTS -Duser.timezone=Asia/Shanghai"
#probe 
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote"
#JAVA_OPTS="$JAVA_OPTS -Xms1024m -Xmx1024m -XX:PermSize=128M -XX:MaxPermSize=256m -Dfile.encoding=UTF8 -Dsun.jnu.encoding=UTF8 -Djava.security.egd=file:/dev/./urandom"
JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF8 -Dsun.jnu.encoding=UTF8 -Djava.security.egd=file:/dev/./urandom"

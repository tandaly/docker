#!/bin/sh
# JAVA-OPTIONS
#https://blog.csdn.net/wcg805/article/details/83062639
#JAVA_OPTS="$JAVA_OPTS -Xms128m -Xmx${heap_size}m -XX:MaxPermSize=256m -server"
# CATALINA-OPTIONS
#CATALINA_OPTS="$CATALINA_OPTS -DserverType=rdtest -DserverName=first"
#probe 
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote"
#JAVA_OPTS="$JAVA_OPTS -Xms1024m -Xmx1024m -XX:PermSize=128M -XX:MaxPermSize=256m -Dfile.encoding=UTF8 -Dsun.jnu.encoding=UTF8 -Djava.security.egd=file:/dev/./urandom"
#机子内存如果是 8G，一般 PermSize 配置是主要保证系统能稳定起来就行：
#JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF-8 -server -Xms6144m -Xmx6144m -XX:NewSize=1024m -XX:MaxNewSize=2048m -XX:PermSize=512m -XX:MaxPermSize=512m -XX:MaxTenuringThreshold=10 -XX:NewRatio=2 -XX:+DisableExplicitGC"
#机子内存如果是 16G，一般 PermSize 配置是主要保证系统能稳定起来就行：
#JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF-8 -server -Xms13312m -Xmx13312m -XX:NewSize=3072m -XX:MaxNewSize=4096m -XX:PermSize=512m -XX:MaxPermSize=512m -XX:MaxTenuringThreshold=10 -XX:NewRatio=2 -XX:+DisableExplicitGC"
#机子内存如果是 32G，一般 PermSize 配置是主要保证系统能稳定起来就行：
#JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF-8 -server -Xms29696m -Xmx29696m -XX:NewSize=6144m -XX:MaxNewSize=9216m -XX:PermSize=1024m -XX:MaxPermSize=1024m -XX:MaxTenuringThreshold=10 -XX:NewRatio=2 -XX:+DisableExplicitGC"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Djava.rmi.server.hostname=192.168.36.13 -Djava.util.logging.mannager=org.apache.juli.ClassLoaderLogManager -Djava.util.logging.config.file=$CATALINA_HOME/conf/logging.properties"
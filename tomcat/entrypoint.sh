#!/bin/bash
#chmod +x entrypoint.sh
limit_in_bytes=$(cat /sys/fs/cgroup/memory/memory.limit_in_bytes)

# If not default limit_in_bytes in cgroup
if [ "$limit_in_bytes" -ne "9223372036854771712" ]
then
    limit_in_megabytes=$(expr $limit_in_bytes \/ 1048576)
    heap_size=$(expr $limit_in_megabytes - $RESERVED_MEGABYTES)
    export JAVA_OPTS=" -server -Xms${heap_size}m -Xmx${heap_size}m -XX:MaxTenuringThreshold=10 -XX:NewRatio=2 -XX:+DisableExplicitGC -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF8 -Djava.security.egd=file:/dev/./urandom -Duser.timezone=Asia/Shanghai $JAVA_OPTS"
    echo JAVA_OPTS=$JAVA_OPTS
fi

exec catalina.sh run

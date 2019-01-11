FROM openjdk:8-jdk

MAINTAINER tandaly@qq.com

ENV JAVA_HOME /docker-java-home
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV TIME_ZONE Asia/Shanghai

#预留空间 256M
ENV RESERVED_MEGABYTES 256
COPY entrypoint.sh /entrypoint.sh

RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME

RUN set -x \
	\
	# 下载Tomcat压缩文件
	&& wget -O tomcat.tar.gz 'http://mirror.bit.edu.cn/apache/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz' \
	# 解压
	&& tar -xvf tomcat.tar.gz --strip-components=1 \
	# 删除供Windows系统使用的.bat文件
	&& rm bin/*.bat \
	# 删除Tomcat压缩文件
	&& rm tomcat.tar.gz* \
	\
	# 更改时区
	&& echo "${TIME_ZONE}" > /etc/timezone \
	&& ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
	\
	# 处理tomcat启动慢问题（随机数产生器初始化过慢）
	&& sed -i "s#securerandom.source=file:/dev/random#securerandom.source=file:/dev/./urandom#g" $JAVA_HOME/jre/lib/security/java.security \
	\
	# 启用gzip压缩
	&& sed -i 's/\(<Connector port="8080" protocol="HTTP\/1.1"\)/\1 compression="on" /' conf/server.xml

EXPOSE 8080
CMD ["/entrypoint.sh"]

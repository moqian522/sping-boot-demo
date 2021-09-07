#基于openjdk：16镜像构建
FROM openjdk:16
#监听8080端口
EXPOSE 8080
#应用plugin中配置的JAR_FILE文件
ARG JAR_FILE
#将当前 target 目录下的 jar 放置在根目录下，命名为 spring-boot-demo.jar，推荐使用绝对路径。
ADD target/${JAR_FILE} /spring-boot-demo.jar
#执行命令 java -jar /spring-boot-demo.jar
ENTRYPOINT ["java", "-jar","/spring-boot-demo.jar"]
# 定制的镜像都是基于 FROM 的镜像，这里的openjdk:8-jdk-alpine就是基础镜像
FROM 192.168.10.100:80/library/java:8
#FROM openjdk:8-jdk-alpine
# 构建参数
ARG JAR_FILE
# 复制指令，将指定文件复制为app.jar
COPY ${JAR_FILE} app.jar
# 声明对外暴露的端口
EXPOSE 8214
# 配置容器启动时运行的命令
ENTRYPOINT ["java","-jar","/app.jar"]
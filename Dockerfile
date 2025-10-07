# پایه WebLogic (مثال: Developer Docker Image)
FROM container-registry.oracle.com/middleware/weblogic:12.2.1.4

USER root

# مسیر اپ
RUN mkdir -p /u01/myapp
WORKDIR /u01/myapp

# کپی فایل WAR که با Maven ساخته شده
COPY target/dev-lab.war /u01/myapp/

USER oracle

EXPOSE 7001

CMD ["startWebLogic.sh"]

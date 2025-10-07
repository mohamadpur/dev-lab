# استفاده از Tomcat 9 با JDK 17
FROM tomcat:9-jdk17

# پاک کردن اپلیکیشن‌های پیش‌فرض Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# کپی فایل WAR ساخته شده توسط Maven
COPY target/simple-tomcat.war /usr/local/tomcat/webapps/ROOT.war

# پورت پیش‌فرض Tomcat
EXPOSE 8080

# اجرای Tomcat
CMD ["catalina.sh", "run"]

# gitlab ino bekhoon

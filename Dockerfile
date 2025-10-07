# استفاده از WebLogic آماده اوراکل
FROM container-registry.oracle.com/middleware/weblogic:12.2.1.4

# کاربر root برای نصب و کپی
USER root

# مسیر برای اپ
RUN mkdir -p /u01/myapp
WORKDIR /u01/myapp

# کپی فایل war ساخته‌شده توسط Maven به داخل WebLogic
# توجه: نام فایل war باید مطابق pom.xml باشه
COPY target/dev-lab.war /u01/myapp/

# برگرد به کاربر oracle (امن‌تر)
USER oracle

# پورت پیش‌فرض WebLogic
EXPOSE 7001

# اجرای WebLogic
CMD ["startWebLogic.sh"]

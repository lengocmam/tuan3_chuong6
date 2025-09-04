# Sử dụng image Tomcat 9 chính thức từ Docker Hub
FROM tomcat:9-jdk17

# Xóa các ứng dụng mặc định trong Tomcat (nếu cần)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào thư mục webapps của Tomcat
COPY SurveyApp.war /usr/local/tomcat/webapps/SurveyApp.war

# Expose port 8080 (port mặc định của Tomcat)
EXPOSE 8080

# Lệnh khởi động Tomcat (mặc định trong image)
CMD ["catalina.sh", "run"]

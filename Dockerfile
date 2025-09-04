# Sử dụng Tomcat chính thức từ Docker Hub
FROM tomcat:9.0-jdk11

# Xóa các app mặc định trong Tomcat (ROOT, examples...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào thư mục webapps
COPY SurveyApp.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]

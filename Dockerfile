# Sử dụng image chính thức của Tomcat với JDK 17 từ Docker Hub
FROM tomcat:10.1-jdk17

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/

# Sao chép ứng dụng của bạn vào thư mục webapps
COPY ./target/*.war /usr/local/tomcat/webapps/webdocker.war

# Cấu hình môi trường (nếu cần)
ENV CATALINA_OPTS="-Xms512M -Xmx1024M"

# Expose port 8080 để có thể truy cập Tomcat từ bên ngoài container
EXPOSE 8080

# Chạy Tomcat khi container khởi động
CMD ["catalina.sh", "run"]

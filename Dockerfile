#######################################################
# Creamos un dockerfile para construir una imagen httpd
#######################################################
# Imagen base CentOS
FROM centos:7.3.1611 
MAINTAINER manuel <mvicente@gmail.com>
# Instalamos httpd
RUN yum install -y httpd mod_ssl && \
    yum clean all
# Exponemos el puerto 80
EXPOSE 80
# Directorio de Logs
ENV APCAHE_LOG_DIR /var/log/httpd
# Lanzamos el httpd
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

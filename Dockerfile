FROM httpd
RUN apt-get update && apt-get install -y libapache2-mod-wsgi-py3
COPY conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY conf/wsgi_app.py /usr/local/apache2/htdocs/wsgi_app.py
RUN cp /usr/lib/apache2/modules/mod_wsgi.so /usr/local/apache2/modules/mod_wsgi.so

FROM frooodle/s-pdf:latest

EXPOSE 8080

COPY ./stirling-pdf/configs /configs
COPY ./stirling-pdf/customFiles/static /customFiles/static

ENV DOCKER_ENABLE_SECURITY=false
ENV INSTALL_BOOK_AND_ADVANCED_HTML_OPS=false
ENV SYSTEM_DEFAULTLOCALE=sr_LATN_RS
ENV SYSTEM_CUSTOM_STATIC_FILE_PATH=/customFiles/static/
ENV LANGS="sr_LATN_RS,en_US"

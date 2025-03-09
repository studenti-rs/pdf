FROM frooodle/s-pdf:0.28.1

EXPOSE 8080

COPY ./stirling-pdf/customFiles/static/* /customFiles/static/

ENV DOCKER_ENABLE_SECURITY=false
ENV INSTALL_BOOK_AND_ADVANCED_HTML_OPS=false
ENV SYSTEM_DEFAULTLOCALE=sr_LATN_RS
ENV APP_LOCALE=sr_LATN_RS
ENV SYSTEM_CUSTOM_STATIC_FILE_PATH=/customFiles/static/
ENV LANGS="sr_LATN_RS,en_US"
ENV UI_APPNAME="PDF alati"
ENV UI_HOMEDESCRIPTION="Konverzije PDF dokumenata u Word, Excel, PowerPoint, JPG, PNG, HTML i obrnuto."
ENV UI_APPNAMENAVBAR="PDF alati"
ENV SYSTEM_MAXFILESIZE="100"
ENV METRICS_ENABLED="false"
ENV SYSTEM_GOOGLEVISIBILITY="true"

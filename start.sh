#!/bin/bash

# Build the Docker image
docker build -t stirling-pdf -f Dockerfile .

# Run the Docker container
docker run -d --name stirling-pdf \
           -p 8080:8080 \
           -v /path/to/stirling-pdf/configs:/configs \
           -v /path/to/stirling-pdf/customFiles/static:/customFiles/static \
           -e DOCKER_ENABLE_SECURITY=false \
           -e INSTALL_BOOK_AND_ADVANCED_HTML_OPS=false \
           -e SYSTEM_DEFAULTLOCALE=sr_LATN_RS \
           -e SYSTEM_CUSTOM_STATIC_FILE_PATH=/customFiles/static/ \
           -e LANGS="sr_LATN_RS,en_US" \
           stirling-pdf

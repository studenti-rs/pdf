# Getting Started

## Local development

```bash
docker-compose -f docker-compose.yml up --build # Optional: --watch --remove-orphans
```

## Production

```bash
docker build -t stirling-pdf -f Dockerfile .
docker run -p 8080:8080 \
           -v $(pwd)/stirling-pdf/configs:/configs \
           -v $(pwd)/stirling-pdf/customFiles/static:/customFiles/static \
           -e DOCKER_ENABLE_SECURITY=false \
           -e INSTALL_BOOK_AND_ADVANCED_HTML_OPS=false \
           -e SYSTEM_DEFAULTLOCALE=sr_LATN_RS \
           -e SYSTEM_CUSTOM_STATIC_FILE_PATH=/customFiles/static/ \
           -e LANGS="sr_LATN_RS,en_US" \
           stirling-pdf
```

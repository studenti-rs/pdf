<p align="center"><img src="https://raw.githubusercontent.com/studenti-rs/pdf/de7aa7b4187a9b1c935693435f4a6d426b3e146e/stirling-pdf/customFiles/static/favicon.svg" width="80" ></p>

<h1 align="center">PDF Tools</h1>

[pdf.studenti.rs](https://pdf.studenti.rs) is a self-hosted [Stirling-PDF](https://github.com/Stirling-Tools/Stirling-PDF/tree/main) instance.

It enables you to carry out various operations on PDF files, including splitting, merging, converting, reorganizing, adding images, rotating, compressing, and more.

All files and PDFs exist either exclusively on the client side, reside in server memory only during task execution, or temporarily reside in a file solely for the execution of the task. Any file downloaded by the user will have been deleted from the server by that point.

## Getting Started

For local development and deployment, we utilize Docker. We pass a YAML configuration and override some static files.

### Local development

To run the app locally, use Docker Compose. It mounts local files to the container, enabling real-time changes.

```bash
docker compose -f docker-compose.dev.yml up --build # Optional: --watch --remove-orphans
```

### Production

In production, deployment is managed by DigitalOcean, which handles it all using the [Dockerfile](./Dockerfile). Pushing to the `main` branch triggers a deployment.

In case you want to run the production version locally, use the following command:

```bash
# Build the Docker image
docker build -t studenti-rs-pdf -f Dockerfile .

# Run the Docker container
docker run -d \
  --name studenti-rs-pdf \
  -p 8080:8080 \
  -v ./stirling-pdf/configs:/configs \
  -v ./stirling-pdf/customFiles/static:/customFiles/static \
  studenti-rs-pdf
```

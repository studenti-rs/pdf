<p align="center"><img src="https://raw.githubusercontent.com/studenti-rs/pdf/de7aa7b4187a9b1c935693435f4a6d426b3e146e/stirling-pdf/customFiles/static/favicon.svg" width="80" ></p>

<h1 align="center">PDF Tools</h1>

[pdf.studenti.rs](https://pdf.studenti.rs) is a self-hosted [Stirling-PDF](https://github.com/Stirling-Tools/Stirling-PDF/tree/main) instance.

It enables you to carry out various operations on PDF files, including splitting, merging, converting, reorganizing, adding images, rotating, compressing, and more.

All files and PDFs exist either exclusively on the client side, reside in server memory only during task execution, or temporarily reside in a file solely for the execution of the task. Any file downloaded by the user will have been deleted from the server by that point.

## Getting Started

Not much to say, on top of the official docs.

We're using [Docker](https://www.docker.com/) for local development and deployment. We pass a yaml config and some static file overrides.

### Local development

```bash
docker-compose -f docker-compose.yml up --build # Optional: --watch --remove-orphans
```

### Run in production

```bash
chmod +x start.sh

./start.sh
```

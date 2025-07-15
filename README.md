# Simple Stirling PDF Deployment

## Deploy
```bash
./deploy.sh
```

## Local Development

**Run locally:**
```bash
docker-compose up -d
```

**Stop:**
```bash
docker-compose down
```

**View logs:**
```bash
docker-compose logs -f stirling-pdf
```

**Access locally:**
http://localhost:8080

The application will be available with the same features as the deployed version, including Serbian language support and PDF conversion tools.

## Access
**http://164.90.237.183:8080**

## Useful Commands

**Check Status:**
```bash
ssh root@164.90.237.183 "docker ps"
```

**View Logs:**
```bash
ssh root@164.90.237.183 "docker logs stirling-pdf"
```

**Restart:**
```bash
ssh root@164.90.237.183 "cd /pdf && docker-compose restart"
```

**Update/Redeploy:**
```bash
./deploy.sh
```

## Notes
- Auto-restarts if it crashes (`restart: unless-stopped`)
- Health checks ensure it's actually working
- Memory limited to 1GB to prevent crashes

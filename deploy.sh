#!/bin/bash

# Simple Stirling PDF Deployment Script
set -e

SERVER="164.90.237.183"
REMOTE_PATH="/pdf"

echo "🚀 Deploying Stirling PDF..."

# Create directory and copy files to server
echo "📁 Creating directory and copying files to server..."
ssh root@$SERVER "mkdir -p $REMOTE_PATH"
scp -r . root@$SERVER:$REMOTE_PATH/

# Deploy on server
echo "🔧 Setting up on server..."
ssh root@$SERVER << 'EOF'
cd /pdf

# Install Docker if not present
if ! command -v docker &> /dev/null; then
    echo "Installing Docker..."
    curl -fsSL https://get.docker.com | sh
fi

# Install Docker Compose if not present
if ! command -v docker-compose &> /dev/null; then
    echo "Installing Docker Compose..."
    curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi

# Stop existing container if running
docker-compose down 2>/dev/null || true

# Start the service
echo "🚀 Starting Stirling PDF..."
docker-compose up -d

# Wait for service to be ready
echo "⏳ Waiting for service to start..."
sleep 30

# Check if it's running
if docker ps | grep -q stirling-pdf; then
    echo "✅ Stirling PDF is running!"
    echo "🌐 Access it at: http://164.90.237.183:8080"
else
    echo "❌ Failed to start Stirling PDF"
    docker logs stirling-pdf
    exit 1
fi
EOF

echo "🎉 Deployment complete!"
echo "🌐 URL: http://164.90.237.183:8080" 
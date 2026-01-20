#!/bin/bash

set -e

echo "🔍 Checking Docker..."
if ! command -v docker &> /dev/null
then
    echo "❌ Docker not installed"
    exit 1
fi

echo "🔍 Checking Docker Compose..."
if ! docker compose version &> /dev/null
then
    echo "❌ Docker Compose not installed"
    exit 1
fi

echo "🧹 Cleaning previous containers..."
docker compose down -v

echo "🚀 Building and starting containers..."
docker compose up --build -d

echo "⏳ Waiting for services..."
sleep 10

echo "[SUCCESS] Application is live at http://localhost"


# Secure-CRUD Application

## 📌 Overview
This project is a multi-container CRUD application built as part of the **Secure-CRUD assignment**.
It demonstrates a production-style architecture using Docker, Nginx, and PostgreSQL.

## 🏗️ Architecture
- **Nginx** – Reverse proxy (only exposed service)
- **FastAPI (Python)** – Application logic
- **PostgreSQL** – Persistent database

All services run in a private Docker network.

## ⚙️ Tech Stack
- Python (FastAPI)
- PostgreSQL
- Docker & Docker Compose
- Nginx

## 🚀 How to Run

### Prerequisites
- Docker
- Docker Compose

### Run the application
```bash
./deploy.sh

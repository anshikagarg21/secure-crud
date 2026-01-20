# Use lightweight Python image
FROM python:3.11-slim

# Create non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /app

# Copy dependency list
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY src/ .

# Change ownership & switch user
RUN chown -R appuser:appuser /app
USER appuser

# Expose internal port (NOT host)
EXPOSE 8000

# Start FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

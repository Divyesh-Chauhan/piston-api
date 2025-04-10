FROM python:3.10-slim

# Install required system packages
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    && apt-get clean

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the code
COPY . .

# Expose port
EXPOSE 2000

# Start the API
CMD ["python", "main.py"]

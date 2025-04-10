FROM python:3.10-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Piston API code
COPY . .

# Expose the port used by Piston
EXPOSE 2000

# Start Piston API
CMD ["python3", "main.py"]

FROM python:3.9-slim

# Install dependencies for PyAudio
RUN apt-get update && apt-get install -y \
    build-essential \
    portaudio19-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all the project files to the container
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port and start the Flask app
EXPOSE 5000
CMD ["python", "app.py"]

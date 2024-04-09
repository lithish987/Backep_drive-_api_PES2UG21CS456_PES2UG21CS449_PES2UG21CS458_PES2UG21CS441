FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the contents of the app folder to the container
COPY . /app

# Install required dependencies
RUN pip install --no-cache-dir google-api-python-client google-auth-httplib2 google-auth-oauthlib

# Copy backup script and credentials JSON file into the image
COPY backup_script.py .
COPY credentials.json .

# Set the entry point to run the backup script
ENTRYPOINT ["python3", "backup_script.py"]


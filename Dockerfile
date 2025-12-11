# Base image MUST be docker image as per assignment
FROM docker:27

# Install Python in this docker image (docker image is Alpine-based)
RUN apk add --no-cache python3 py3-pip

# Set working directory
WORKDIR /app

# Copy our Python file into the image
COPY app.py .

# Default command: run the app
CMD ["python3", "app.py"]


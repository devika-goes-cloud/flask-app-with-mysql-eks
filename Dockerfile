# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# install required packages for system
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container
COPY requirements.txt .

# Install app dependencies
RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Specify the command to run your application
CMD ["python", "app.py"]





# # Multi-stage dockerfile

# # --------------------------
# # Stage 1: Builder
# # --------------------------
# FROM python:3.9-slim AS builder

# # Set working directory
# WORKDIR /app

# # Install system packages needed to build dependencies
# RUN apt-get update && \
#     apt-get install -y gcc default-libmysqlclient-dev pkg-config && \
#     rm -rf /var/lib/apt/lists/*

# # Copy requirements and install Python dependencies
# COPY requirements.txt .
# RUN pip install --no-cache-dir mysqlclient -r requirements.txt

# # Copy application code
# COPY . .

# # --------------------------
# # Stage 2: Final image
# # --------------------------
# FROM python:3.9-slim

# WORKDIR /app

# # Copy only installed Python packages from builder stage
# COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
# COPY --from=builder /app /app

# # Expose port (optional, for documentation)
# EXPOSE 5000

# # Run the Flask app
# CMD ["python", "app.py"]



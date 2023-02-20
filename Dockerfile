FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
RUN mkdir -p /Project
WORKDIR /Project

## Step 2:
# Copy source code to working directory
COPY app.py /Project

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install -r requirements.txt

## Step 4:
# Expose port 80

## Step 5:
# Run app.py at container launch


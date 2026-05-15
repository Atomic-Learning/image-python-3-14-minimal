# Use Python 3.14 slim as the base image
FROM python:3.14-slim

# Install only the requested Python package
RUN pip install --no-cache-dir ipykernel

# Default working directory
WORKDIR /workspaces
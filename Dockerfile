# Use Python 3.14 slim as the base image
FROM python:3.14-slim

# Install git for Codespaces source control support
RUN apt-get update \
	&& apt-get install -y --no-install-recommends git \
	&& rm -rf /var/lib/apt/lists/*

# Install only the requested Python package
RUN pip install --no-cache-dir ipykernel

# Default working directory
WORKDIR /workspaces
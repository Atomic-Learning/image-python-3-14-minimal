# Use Python 3.14 slim as the base image
FROM python:3.14-slim

# Install only the requested Python package
RUN pip install --no-cache-dir ipykernel

# Create a non-root user (Codespaces uses "vscode" by default)
ARG USER=vscode
ARG UID=1000
RUN useradd -m -u ${UID} ${USER} || true

# Switch to that user
USER ${USER}

# Default working directory
WORKDIR /home/${USER}
# Base image: customize as needed for your use case
FROM debian:bookworm-slim

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install minimal system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user (Codespaces uses "vscode" by default)
ARG USER=vscode
ARG UID=1000
RUN useradd -m -u ${UID} ${USER} || true

# Switch to that user
USER ${USER}

# Add your package installations or configuration here
RUN echo "Image setup complete"
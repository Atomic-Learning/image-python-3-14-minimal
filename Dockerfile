# Use Python 3.14 slim as the base image
FROM python:3.14-slim

# Install only the requested Python package
RUN pip install --no-cache-dir ipykernel

# Create a non-root user (Codespaces uses "vscode" by default)
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=${USER_UID}
RUN apt-get update \
	&& apt-get install -y --no-install-recommends passwd \
	&& rm -rf /var/lib/apt/lists/* \
	&& groupadd --gid ${USER_GID} ${USERNAME} \
	&& useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME}

# Switch to that user
USER ${USERNAME}

# Default working directory
WORKDIR /home/${USERNAME}
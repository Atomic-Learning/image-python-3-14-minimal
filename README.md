# Description

This repo acts as a template for building and pushing Docker images to GitHub Container Registry (GHCR) using GitHub Actions. It includes a sample Dockerfile and a GitHub Actions workflow that builds and pushes the image whenever changes are pushed to the repository.

## Editing the Published Image

To edit the published image, you can modify the `Dockerfile` in the root of the repository. This file defines the instructions for building the Docker image. No other files need to be edited to affect the published image. If you want to test the image, you can use the `devcontainer.json` file in the `.devcontainer` directory to set up a development container that uses the image built from the `Dockerfile`. This allows you to work with the image locally before pushing changes to GitHub.

## Building and Pushing the Image

The GitHub Actions workflow defined in `.github/workflows/build-and-push.yml` will automatically build and push the Docker image to GHCR whenever changes are pushed to the repository. The workflow uses the `docker/build-push-action` to build the image from the `Dockerfile` and push it to GHCR with tags based on the repository name and commit SHA.

# Editing this Readme

When this template is used, you should delete this section and the description above, and complete the sections below with a description of the image. Including the base image used and descriptions of any tools, packages, etc installed in the image would be useful.

# Introduction

This repository contains a Docker image that serves as a base for development and deployment. The image is built using a `Dockerfile` that specifies the base image and any additional tools or packages installed. The image may be used with the image name `ghcr.io/atomic-learning/<repository>:latest` or with a specific tag based on the commit SHA.

# Image Description

Complete this section.
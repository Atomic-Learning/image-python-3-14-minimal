# Python 3.14 Minimal Image

This repository builds and publishes a minimal container image with:

- Python 3.14 (latest patch version from `python:3.14-slim`)
- `ipykernel` as the only explicitly installed Python package

The image is built from the root `Dockerfile` and published by the repository GitHub Actions workflow.

## Image Contents

- Base image: `python:3.14-slim`
- Installed with `pip`: `ipykernel`
- Runtime user in Codespaces/devcontainer: `root` (configured in `.devcontainer/devcontainer.json`)

## Notes

- If Python 3.14 receives a patch update upstream, rebuilding this image will pick up that newer patch release.
- To change the published image contents, edit only the root `Dockerfile`.
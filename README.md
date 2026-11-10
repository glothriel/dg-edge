# dg-edge

Minimal Operaton testing demo.

Prints Hello world once per second. No dependencies.

Operaton prepares `release/<version>` and release notes. Every `v*` tag builds a Linux amd64 Docker image and a draft with `SHA256SUMS`. RCs are prereleases, never latest. Final tags rebuild approved code; Operaton publishes successful final builds as latest.

Download both release files, then run:

```sh
sha256sum -c SHA256SUMS
gunzip -c dg-edge-v0.1.0-docker-linux-amd64.tar.gz | docker load
docker run --rm dg-edge:v0.1.0
```

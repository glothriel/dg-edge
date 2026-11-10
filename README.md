# dg-edge

Minimal Operaton testing demo.

Prints Hello world once per second. No dependencies.

Operaton prepares `release/<version>` and `.release/notes.md`. A `v*-rc.*` tag builds a Linux amd64 Docker image and a draft prerelease with `SHA256SUMS`, never latest. Final releases reuse approved RC assets without rebuilding.

Download both release files, then run:

```sh
sha256sum -c SHA256SUMS
gunzip -c dg-edge-v0.1.0-docker-linux-amd64.tar.gz | docker load
docker run --rm dg-edge:v0.1.0
```

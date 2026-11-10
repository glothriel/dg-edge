# dg-edge

Minimal Operaton testing demo.

Prints Hello world once per second. No dependencies.

Push a `v*` tag to build a Linux amd64 Docker image and publish it with `SHA256SUMS` in GitHub Releases.

Download both release files, then run:

```sh
sha256sum -c SHA256SUMS
gunzip -c dg-edge-v0.1.0-docker-linux-amd64.tar.gz | docker load
docker run --rm dg-edge:v0.1.0
```

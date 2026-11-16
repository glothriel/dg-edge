# dg-edge

Minimal Operaton testing demo.

Prints Hello world once per second. No dependencies.

Operaton prepares `release/<version>` and release notes. RC tags build a Linux
amd64 Docker image and upload the `release-payloads` Actions artifact. Operaton
verifies the bytes and publishes an RC prerelease with `SHA256SUMS`, never latest.
Final tags copy the approved RC bytes into a draft without rebuilding; Operaton
verifies and publishes the final release.


Download both release files, then run:

```sh
sha256sum -c SHA256SUMS
gunzip -c dg-edge-v0.1.0-docker-linux-amd64.tar.gz | docker load
docker run --rm dg-edge:v0.1.0
```

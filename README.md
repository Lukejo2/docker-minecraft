# docker-minecraft
Simple Dockerfile to run a minecraft server

## Setup

First, you must have a minecraft `server.jar`. This Dockerfile
has was tested with `minecraft 1.18.1`

```shell
wget https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar
```

## Limitations

- The Dockerfile sets a user `falcon` with a uid and gid. This was needed
to ensure the mounted volume permissions matched. It could be modified to 
run as a different user or as root.  
- `xmx` is set in `entrypoint.sh` to `xmx4G` and `xms` is set to `xms1G`
- Dockerfile `openjdk` image is locked to `arm64`

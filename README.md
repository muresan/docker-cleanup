# docker-cleanup

Cleanup docker containers and images using `docker container prune` and `docker image prune` docker commands.

```
docker run -d -e FORCE=true -e DELAY=4h muresan/cleanup-docker
```

# docker-cleanup

Cleanup docker containers and images using `docker container prune` and `docker image prune` docker commands.

* `DELAY` gets set as a parameter to `sleep` so you can put seconds, 1m, 1h, etc.
* `FORCE` if set, will add -a to `docker image prune` so all images not just dangling ones, will be deleted.

```
docker run -d -e FORCE=true -e DELAY=4h muresan/docker-cleanup
```


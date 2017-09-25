#!/bin/sh -x

# set DELAY to seconds via docker env vars
# set FORCE to anything to force image cleanup for all unused not just dangling

docker version || exit 1

while true 
do
	docker container prune -f
	docker image prune -f ${FORCE:+-a}
	sleep ${DELAY:-3600}
done

#!/bin/sh -x

# set DELAY to seconds via docker env vars
# set FORCE to anything to force image cleanup for all unused not just dangling

docker version || exit 1

while true 
do
	docker container prune -f --filter='label!=do-not-prune=true'
	docker image prune -f ${FORCE:+-a}
	[ "$VOLUMES" = "yes" ] && docker volume prune -f --filter='label!=do-not-prune=true'
	sleep ${DELAY:-3600}
done

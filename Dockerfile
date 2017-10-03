FROM docker:stable

LABEL org.label-schema.url="https://github.com/muresan/docker-cleanup/blob/master/README.md" \
      org.label-schema.vcs-url="https://github.com/muresan/docker-cleanup"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


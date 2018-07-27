FROM timveil/docker-hadoop-base

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:8188/ || exit 1

RUN mkdir -p /hadoop/yarn/timeline
VOLUME /hadoop/yarn/timeline

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# history UI
EXPOSE 8188

CMD ["/run.sh"]

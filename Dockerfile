FROM timveil/docker-hadoop-core:3.1.x

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:8188/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# history UI
EXPOSE 8188

CMD ["/run.sh"]

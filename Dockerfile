ARG version=latest
FROM ubuntu:$version
#MAINTAINER est obsolète
MAINTAINER JCD "jcd717@outlook.com"

#Economiser les couches en mettant des anti-slashes "\" entre chaque argument
LABEL maintainer="JCD <jcd717@outlook.com>" \
      description="test" \
      auteur="bruno dubois"

COPY heartbeat.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh ; \
    echo coucou >test.txt

ARG hbs=3
ENV HEARTBEATSTEP $hbs


# information de port réseau utile
#EXPOSE 1234/udp 4321/tcp

ENTRYPOINT ["/entrypoint.sh"]
CMD ["battement"]


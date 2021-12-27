FROM openjdk@sha256:8a99742c7c38a7b0826c8a47cacbca18af5c3a60e6eba18e75d6a8c28b9fa9b4
ENV SERVER_PORT=25565

HEALTHCHECK --start-period=1m CMD mcstatus localhost:$SERVER_PORT ping

RUN useradd -s /bin/false falcon -u 2000 -UM \
  && mkdir -p -m 777 /server \
  && chown falcon:falcon /server

EXPOSE 25565 25575

VOLUME ["/server"]
WORKDIR /usr/src/app
COPY server.jar server.jar
COPY entrypoint.sh entrypoint.sh
RUN chown falcon:falcon *
USER falcon
CMD ["sh", "entrypoint.sh"]
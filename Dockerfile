FROM eclipse-temurin:21-jre-alpine

ARG TARGETOS
ARG TARGETARCH
ARG TARGETVARIANT

RUN apk add uuidgen wget
COPY /root /

WORKDIR /app

STOPSIGNAL SIGTERM

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 19132/udp

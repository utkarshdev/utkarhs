FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/uud.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/uud

COPY uud.sh /usr/bin/uud.sh
RUN chmod +x /usr/bin/uud.sh
COPY target/uud.jar /usr/share/uud/uud.jar
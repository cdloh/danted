FROM alpine:3.15.3

ARG DUMB_INIT=1.2.5

RUN set -x \
    # Install dependencies.
 && apk add dante-server --no-cache

# Default configuration
COPY sockd.conf /etc/

EXPOSE 1080

CMD ["sockd"]

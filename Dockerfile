FROM alpine:3.20

RUN apk add --no-cache \
  bash \
  curl \
  rclone \
  cronie \
  tzdata

WORKDIR /app

# Where users mount their scripts
VOLUME ["/scripts", "/config", "/data"]

# Default cron location
COPY example/crontab /etc/crontabs/root

CMD ["crond", "-f"]


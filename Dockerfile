FROM alpine

RUN apk add --update chromium libexif udev && \
    apk info --purge

ENTRYPOINT ["chromium-browser"]

CMD ["--user-data-dir=/data"]

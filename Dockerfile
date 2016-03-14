FROM alpine

RUN apk add --update chromium libexif-dev mesa-gles mesa-gl mesa-dri-swrast v4l-utils-dev pango eudev-libs libcanberra-gtk3 libcanberra-gtk2 ghostscript-fonts fontsproto && \
    apk info --purge

ENTRYPOINT ["chromium-browser"]

CMD ["--user-data-dir=/data"]

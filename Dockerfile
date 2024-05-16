FROM alpine:3.16
RUN apk add --no-cache lua5.3 lua-filesystem lua-lyaml lua-http
RUN apk add git
RUN apk add py3-pip
RUN pip install git-remote-codecommit --break-system-packages
COPY fetch-latest-releases.lua /usr/local/bin
VOLUME /out
ENTRYPOINT [ "/usr/local/bin/fetch-latest-releases.lua" ]

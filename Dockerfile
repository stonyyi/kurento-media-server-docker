FROM kurento/media-server-64:5.1.0-trusty
MAINTAINER Thomas Shafer <thomas@cine.io>

# workaround for https://github.com/docker/docker/issues/6345
RUN ln -s -f /bin/true /usr/bin/chfn

# copy our service
COPY service /service

VOLUME ["/var/rtc-recordings"]

CMD ["/bin/bash", "/service/bin/run"]

# for websocket connection
EXPOSE 80
# This is the HttpGetEndpoint port
EXPOSE 9091

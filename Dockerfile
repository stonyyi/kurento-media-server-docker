FROM kurento/media-server-64-dev:5.1.1-1.2015
MAINTAINER Thomas Shafer <thomas@cine.io>

# workaround for https://github.com/docker/docker/issues/6345
RUN ln -s -f /bin/true /usr/bin/chfn

# copy our service
COPY service /service

VOLUME ["/var/rtc-recordings"]

CMD ["/bin/bash", "/service/bin/run"]

EXPOSE 8888

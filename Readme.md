# kurento-media-server-docker

cine.io [Docker](https://docker.com/) container that runs the [kurento media server](http://www.kurento.org/).


# Usage

```bash
$ docker run  -d --name kurento-media-server -h rtc-endpoint-dev  -p 8888:8888 -v "/Users/thomas/work/tmp:/var/rtc-recordings"   cine/kurento-media-server-docker
```

# Notes

1. You'll have to change your host /var/rtc-recordings folder

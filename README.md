
# Simple Docker Tinyproxy

A simple Tinyproxy Docker container. Only one setting is changed from the default, so it accepts connections from any source.

```text
#Allow 127.0.0.1
```

## Build and run

```text
$ docker build -t tinyproxy .
$ docker run -d --name tinyproxy -p 8888:8888 tinyproxy
```
## Monitor log file

```text
$ docker exec -it tinyproxy bash
# tail -F /var/log/tinyproxy/tinyproxy.log
```

## Test

```text
$ curl -x localhost:8888 https://ipinfo.io
```


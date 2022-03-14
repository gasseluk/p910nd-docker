# p910nd-docker

## Quickstart

Pull the image

```sh
docker pull looz11/p910nd:latest
```

Run it

```sh
docker run -d \
  -p 9100:9100 \
  --device=/dev/usb/lp0:/dev/usb/lp0 \
  -e LP_DEVICE=/dev/usb/lp0 \
  --restart unless-stopped \
  --name  p910nd \
  looz11/p910nd:latest
```

Replace `/dev/usb/lp0` with the printer device you want to share.

## About p910nd
From the github page:

`p910nd is a small printer daemon intended for diskless platforms that does not spool to disk but passes the job directly to the printer.`

https://github.com/kenyapcomau/p910nd

## Docker Hub
https://hub.docker.com/r/looz11/p910nd

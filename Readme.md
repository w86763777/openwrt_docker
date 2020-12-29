## Build OpenWrt in Docker

## Docker
```
docker build -t openwrt-dev-ubuntu1804 .
```

## Run Docker
```
docker run --detach -p 10000:22 -v $PWD:/home/openwrt -it --name openwrt openwrt-dev-ubuntu1804
```

## SSH
```
ssh -p 10000 openwrt@localhost
```
password is `openwrt`

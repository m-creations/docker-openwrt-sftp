docker-openwrt-sftp
===================

An image based on OpenWrt x86_64 which runs an sftp server.

How to use
----------

The simplest case is to specify user name and password when starting
the container:

```
docker run -p 11022:22 -it --rm -e SFTP_USER=scott -e SFTP_PASSWORD=tiger mcreations/openwrt-sftp
```

Now, you can sftp to this docker instance with

```
sftp -P 11022 sftp@localhost
```

Github Repo
-----------

https://github.com/m-creations/docker-openwrt-sftp



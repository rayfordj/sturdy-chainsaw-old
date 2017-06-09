# sturdy-chainsaw
systemd-foreman efforts

```shell
$ containerid=`docker run -tdi -p 8443:443 --hostname="localhost.localdomain" foreman`
$ docker exec ${containerid} systemctl status
$ docker exec ${containerid} foreman-installer --no-enable-foreman-proxy
$ curl -k https://localhost.localdomain:8443
$ docker exec ${containerid} systemctl status
```
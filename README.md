# sturdy-chainsaw
systemd-foreman efforts

```shell
docker build -t foreman .
containerid=`docker run -tdi -p 443:443 -p 8443:8443 -p 8140:8140 --hostname="localhost.localdomain" foreman`
docker exec ${containerid} foreman-installer
curl -k https://localhost.localdomain
docker exec ${containerid} systemctl status
```

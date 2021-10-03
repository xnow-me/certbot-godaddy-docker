**build image**
```
docker build . -t certbot-godaddy-docker
```

**run**

```
docker run --rm  -e GODADDY_SECRET=YOUR-GODADDY-SECRET -e GODADDY_KEY=YOUR-GODADDY-KEY -e DOMAIN=YOUR-DOMAIN -v YOUR-LOCAL-PATH:/etc/letsencrypt/ certbot-godaddy-docker 
```

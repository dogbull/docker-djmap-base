# docker-djmap-base

This is a docker project to create container with `Apache2`, `Python3`/`Django2`, `Mapserver7` and `GDAL2`.

## Create container
```bash
docker run -itd -p 80:80 epinet/djmap-base
```

### Check your self
1. View the site at `http://localhost:80`
2. View the `mapserver` cgi message at `http://localhost:80/mapserver/`

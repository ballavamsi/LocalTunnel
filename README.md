# Local Tunnel

Sometimes localtunnel gets disconnected and the container will be always restarting.

So added a until loop if the lt gets disconnected it will try again.

## docker run command

```
docker run -d ballavamsi/localtunnel -e LT_LOCALHOST=localhost -e LT_PORT=6000 -e LT_SUBDOMAIN=custom-website
```

## Available environment variables

```
LT_LOCALHOST:
LT_PORT: 5000
LT_SUBDOMAIN:
LT_OTHER_ARGS:
```

## Docker Compose

```
    webapp:
        .....
        port:
            8080:5000
    lt:
        image: ballavamsi/localtunnel
        restart: always
        environment:
            LT_LOCALHOST: webapp
            LT_PORT: 5000
            LT_SUBDOMAIN: anysubdomainyouwant
            # make sure to check the subdomain is available or else it will assign random
        links:
            - webapp
        depends_on:
            - webapp
```

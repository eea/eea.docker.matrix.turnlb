# eea.docker.matrix.turnlb
### TCP/UDP Nginx balancer for turn

based on [nginx](https://hub.docker.com/_/nginx/)

## Prerequisites

- Install [Docker](https://docs.docker.com/installation/)

## Environment variables

* ```TURN_HOST``` - name of turn service, must be one only
* ```RESOLVER_IP``` - DNS ip, use "8.8.8.8" outside rancher
* ```RESOLVER_TIMEOUT``` - default 15s


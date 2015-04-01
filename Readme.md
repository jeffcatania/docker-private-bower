
# Private Bower Docker
This repository is a docker container for [private-bower](https://github.com/Hacklone/private-bower) following [sameersbn](https://registry.hub.docker.com/u/sameersbn)'s Dockerfile style.  Modification of [tandrup](https://registry.hub.docker.com/u/tandrup/private-bower/)'s previous work.

## Getting Started
Example **docker-compose.yml** config:
```yml
bower:
    hostname: bower
    image: jeffcatania/private-bower
    volumes:
        - /mnt/DATA/private-bower:/data
    ports:
        - "5678:5678"
        - "6789:6789"
        - "7891:7891"
    mem_limit: 2g
    cpu_shares: 256
    restart: always
    links:
        - gitlab
```

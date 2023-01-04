# alpine-binary-c-hl (39d8bfc1-4152-4e6e-8843-38f8a7a5b13b)
This docker is based on the Alpine Binary C app image of the Hacking-Lab CTF system.  
This docker provides a executable Binary C app.

## Customizing
- Place your binary/c file in `./root/src/binary.c`
- Change if required listening port in `./root/etc/services.d/run`
  example - `exec socat TCP-LISTEN:1234,fork,reuseaddr EXEC:/server`

## GitHub
See [hacking-lab/alpine-binary-c-hl](https://github.com/Hacking-Lab/alpine-binary-c-hl/) for full information information.

## Building & testing
- Build and run: `docker-compose up --build`, then navigate to [http://localhost:80](http://localhost:80)
- Deploy: `./prepare.sh`, then upload `dockerfiles.tar.gz`
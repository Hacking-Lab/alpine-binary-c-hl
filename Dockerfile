FROM hackinglab/alpine-unitd-hl:latest

LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

ADD root /
RUN apk update
RUN chmod +x /etc/services.d/*/run 
RUN apk add --no-cache gcc libc-dev unit curl libseccomp libseccomp-dev socat unit
# Compiling binary from source ( replace the binary with the one from the challenge - /src/binary.c)


RUN apk add musl 


RUN chmod +x /arch.sh
RUN /arch.sh






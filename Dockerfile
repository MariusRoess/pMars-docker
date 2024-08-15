FROM alpine:latest
RUN apk update 
RUN apk add --no-cache git make gcc musl-dev
WORKDIR /home/ubuntu
RUN git clone https://github.com/mbarbon/pMARS
WORKDIR /home/ubuntu/pMARS
RUN cd src && make

WORKDIR /home/ubuntu/pMARS/warriors 
ENTRYPOINT [ "sh", "-c", "../src/pmars -r 100 $(echo ${@})","-"]

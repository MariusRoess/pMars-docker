FROM ubuntu:latest
RUN apt update && apt upgrade -y
RUN apt install git make gcc -y
WORKDIR /home/ubuntu
RUN git clone https://github.com/mbarbon/pMARS
WORKDIR /home/ubuntu/pMARS
RUN cd src && make

WORKDIR /home/ubuntu/pMARS/warriors 
#CMD ["../src/pmars -r 100 $(ls | head -2)"]
ENTRYPOINT [ "sh", "-c", "../src/pmars -r 100 $(echo ${@})","-"]

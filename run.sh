#!/bin/bash 
docker run --name pmars-container \
   # --mount type=bind,source="$(pwd)"/warriors,target=/home/ubuntu/pMARS/warriors \
    -it pmars
docker rm pmars-container
 
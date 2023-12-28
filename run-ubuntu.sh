docker pull docker.io/library/ubuntu:latest
docker run -d \
    --name ubuntu \
    --privileged=true \
    --net=host \
    docker.io/library/ubuntu:latest	 \
    /bin/bash



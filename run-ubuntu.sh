docker pull docker.io/library/ubuntu:latest
docker run -d \
    --name almalinux \
    --privileged=true \
    --net=host \
    docker.io/library/ubuntu:latest	 \
    /usr/sbin/init


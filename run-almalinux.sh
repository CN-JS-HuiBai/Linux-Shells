docker pull almalinux/9-init:latest
docker run -d \
    --name almalinux \
    --privileged=true \
    --net=host \
    docker.io/almalinux/9-init:latest \
    /usr/sbin/init



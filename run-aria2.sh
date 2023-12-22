mkdir -p /aria2/config
mkdir -p /aria2/downloads
docker pull docker.io/p3terx/ariang:latest
docker pull docker.io/p3terx/aria2-pro:latest

docker run -d \
    --name ariang \
    --log-opt max-size=1m \
    --restart unless-stopped \
    -p 6880:6880 \
    p3terx/ariang
docker run -d \
    --name aria2 \
    --restart unless-stopped \
    --log-opt max-size=1m \
    -e PUID=$UID \
    -e PGID=$GID \
    -e UMASK_SET=022 \
    -e RPC_SECRET=adminadmin \
    -e RPC_PORT=6800 \
    -e LISTEN_PORT=6888 \
    -p 6800:6800 \
    -p 6888:6888 \
    -p 6888:6888/udp \
    -v /aria2/config:/config \
    -v /aria2/downloads:/downloads \
    p3terx/aria2-pro
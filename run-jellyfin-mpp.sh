#The Shell comes from https://github.com/jjm2473/ffmpeg-rk and fix podman problems
mkdir -p /jellyfin/config
docker run --name jellyfin \
    --security-opt systempaths=unconfined --security-opt apparmor=unconfined \
    --restart=unless-stopped -td \
    --device /dev/mpp_service \
    --device /dev/rga \
    --device /dev/dri \
    --pid=host \
    --dns=172.17.0.1 \
    -p 8096:8096 \
    -v /jellyfin/config:/config \
    -v /mnt:/mnt \
    -v /media:/media \
    jjm2473/jellyfin-mpp:latest

    
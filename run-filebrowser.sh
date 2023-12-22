mkdir /filebrowser
docker run -dit \
    -v /filebrowser:/srv \
    -v /filebrowser/config.json:/etc/config.json \
    -v /filebrowser/database.db:/etc/database.db \
    -p 8082:80 \
    --restart always \
    --name filebrowser \
    --privileged=true \
    filebrowser/filebrowser:latest
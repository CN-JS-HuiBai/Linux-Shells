docker run -d \
  --name palserver \
  --restart=always \
  --net=host \
   -v /data:/opt/palworld/Pal/Saved \
   pasharp/pal_server  \
   /home/game/Steam/steamapps/common/PalServer/PalServer.sh

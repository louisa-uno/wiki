docker run -d \
--name jellyfin \
-p 8096:8096/tcp \
-p 11900:1900/udp \
-p 7359:7359/udp \
-v /mnt/raid1/docker/volumes/jellyfin-config:/config \
-v /mnt/raid1/docker/volumes/jellyfin-cache:/cache \
--mount type=bind,source=/mnt/raid1/nextcloud/louis/files/Medien,target=/media \
--restart=unless-stopped \
jellyfin/jellyfin

cd /tmp
dnf -y install nginx nginx*
mkdir -p /www/nginx.conf.d
mkdir -p /www/wwwlogs
mkdir -p /www/nginx.proxy.d
cp /root/nginx.conf /etc/nginx/nginx.conf
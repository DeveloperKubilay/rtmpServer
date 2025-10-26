#sudo nano /usr/local/nginx/conf/nginx.conf
#sudo nano /usr/local/nginx/html/index.html
#!/bin/bash

NGINX_BIN="/usr/local/nginx/sbin/nginx"
NGINX_CONF="/usr/local/nginx/conf/nginx.conf"

echo "🔹 Nginx config test ediliyor..."
$NGINX_BIN -t -c $NGINX_CONF
if [ $? -ne 0 ]; then
    echo "❌ Config hatası var, düzeltilmeli!"
    exit 1
fi

echo "🔹 Var olan nginx processleri öldürülüyor..."
sudo pkill nginx

echo "🔹 Nginx başlatılıyor..."
$NGINX_BIN -c $NGINX_CONF

echo "✅ Nginx başlatıldı!"
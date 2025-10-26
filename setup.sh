sudo apt update
sudo apt install build-essential libpcre3 libpcre3-dev libssl-dev git -y
cd ~
git clone https://github.com/arut/nginx-rtmp-module.git
wget http://nginx.org/download/nginx-1.25.2.tar.gz
tar -xvf nginx-1.25.2.tar.gz
cd nginx-1.25.2
./configure --add-module=../nginx-rtmp-module --with-http_ssl_module
make
sudo make install
mkdir -p /tmp/hls
sudo chown -R nobody:nogroup /tmp/hls

sudo nano /usr/local/nginx/conf/nginx.conf
sudo nano /usr/local/nginx/html/index.html


cat port 1935
cat rtmp://ipaddr/live
cat http://ipaddr:8080/index.html
FILE="/var/log/nginx/access.log"
TIME=$(date "+%Y%m%d%H%M%S")
sudo mv ${FILE} ${FILE}.${TIME}

sudo systemctl reload nginx4

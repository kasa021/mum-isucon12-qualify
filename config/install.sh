#!/bin/bash
set -e  # 任意のコマンドが失敗したらスクリプトを終了する

# alpのインストール
wget https://github.com/tkuchiki/alp/releases/download/v1.0.16/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo mv alp /usr/local/bin

# apache2-utilsのインストール
sudo apt-get update
sudo apt install apache2-utils -y

# k6のインストール
sudo gpg -k
sudo gpg --no-default-keyring --keyring /usr/share/keyrings/k6-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
echo "deb [signed-by=/usr/share/keyrings/k6-archive-keyring.gpg] https://dl.k6.io/deb stable main" | sudo tee /etc/apt/sources.list.d/k6.list
sudo apt-get update
sudo apt-get install k6

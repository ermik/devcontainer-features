#!/bin/sh
set -e

echo "Activating feature 'mkcert'"

sudo apt update -y
sudo apt install libnss3-tools -y
echo "Getting mkcert from: $DOWNLOAD_URL"
wget -q $DOWNLOAD_URL -O mkcert
sudo mv mkcert /usr/local/bin/mkcert
sudo chmod +x /usr/local/bin/mkcert
mkcert -install

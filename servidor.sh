#!/bin/bash

echo "Inicializando ..."
echo "Atualizando os pacotes"
apt-get update -y
apt-get upgrade -y
echo "Baixando o apache"
apt install apache2
echo "Baixando o unzip"
apt-get install unzip -y
echo "Copiando o arquivo http"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
rm /var/www/html/index.html
cp * /var/www/html/

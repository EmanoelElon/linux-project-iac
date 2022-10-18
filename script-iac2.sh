#!/bin/bash

# É recomendado usar o "apt-get" ao invez de "apt" no script

#Atualização do servidor
apt-get update
apt-get upgrade -y
#instalações necessarias
apt-get install apache2 -y
apt-get install unzip -y
#acessa a pasta tmp
cd /tmp
#clona um repositorio
git clone https://github.com/denilsonbonatti/linux-site-dio.git
#descompacta o repositorio clonado
unzip linux-site-dio-main
#acessa a pasta descompactada 
cd linux-site-dio-main
#copia todos os arquivos recusivos
cp -R * /var/www/html/

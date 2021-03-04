#!/bin/bash

clear
sudo apt install geoip-bin gedit -y
clear
echo ""
echo "================================================================================"
echo "                              IP Geolocalization"
echo "================================================================================"
echo ""
echo "                    ===== Digite o IP ou Domínio: ====="
read ip
echo ""
echo "        ===== Quar que os dados capturados sejam salvos em nota? ====="
echo ""
echo "                                1 - Sim"
echo "                                2 - Não *"
echo ""
echo "                           ===== Resposta: ====="
read dados
echo ""
echo "                     Pressione <ENTER> para buscar dados!"
read #pause
echo "================================================================================"
echo ""
clear
echo "================================================================================"
echo "                             IP Geolocalization"
echo "================================================================================"
echo ""
echo "                       ===== Dados encontrados: ====="
echo ""
if [[ $dados -eq 1 ]];
then
  geoiplookup $ip
  echo ""
  echo "============================================================================="
  echo ""
  echo "                    Pressione <ENTER> para ver a nota!"
  read #pause
  geoiplookup $ip > ~/GeoIP-Note.txt & gedit ~/GeoIP-Note.txt
  exit
else
  geoiplookup $ip
fi
echo ""
echo "==============================================================================="
echo ""
echo "                       Pressione <ENTER> para sair..."
read #pause
clear

#!/bin/bash

echo "programa inicializado"
echo "Apagando usuários"
userdel -rf josefina
userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf amanda
userdel -rf rogerio
userdel -rf roberto
echo "Apagando os grupos"
groupdel grp_adm
groupdel grp_ven
groupdel grp_sec

echo "Apagando as pastas"
rm -rf /publico /adm /sec /ven

echo "Encerrando programa"

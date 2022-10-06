#!/bin/bash

echo "Programa inicializando"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos"
groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "Criando os usuarios"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_adm
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_adm
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_adm

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_ven
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_ven
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_ven

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_sec
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_sec
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G grp_sec
passwd -e carlos
passwd -e maria
passwd -e joao
passwd -e debora
passwd -e sebastiana
passwd -e roberto
passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "Permissao para os grupos"
chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec

echo "Permissao para as pastas"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo "Programa encerrado"


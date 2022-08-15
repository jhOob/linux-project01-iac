#!/bin/bash

echo "Criando Infraestrutura como codigo"

echo "Criando diretorios ......."
mkdir publico 
mkdir adm 
mkdir ven
mkdir sec
echo "Criando grupos......"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários....."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "Adicionando usuários aos seus respectivos grupos"
 
usermod -a -G GRP_ADM carlos 
usermod -a -G GRP_ADM maria 
usermod -a -G GRP_ADM joao

usermod -a -G GRP_VEN debora
usermod -a -G GRP_VEN sebastiana
usermod -a -G GRP_VEN roberto

usermod -a -G GRP_SEC josefina 
usermod -a -G GRP_SEC amanda
usermod -a -G GRP_SEC rogerio

echo "Configurando permissões......"

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec


echo "Estrutura Finalizada!"

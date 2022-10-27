#!/bin/bash

echo "Criando diretorios /publico"
mkdir /publico
echo "Criando diretorios /adm"
mkdir /adm
echo "Criando diretorios /ven"
mkdir /ven
echo "Criando diretorios /sec"
mkdir /sec

echo "Criando Grupos de usuarios GRP_ADM"
groupadd GRP_ADM
echo "Criando Grupos de usuarios GRP_VEN"
groupadd GRP_VEN
echo "Criando Grupos de usuarios GRP_SEC"
groupadd GRP_SEC

echo "Criando Usuário carlos e  atribuindo a grupo GRP_ADM"
useradd carlos -c "Carlos Pereira" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
echo "Criando Usuário maria e  atribuindo a grupo GRP_ADM"
useradd maria -c "Maria Candido" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
echo "Criando Usuário joao e  atribuindo a grupo GRP_ADM"
useradd joao -c "Joao da Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

echo "Criando Usuário debora atribuindo a grupo GRP_VEN"
useradd debora -c "Debora Veiga" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
echo "Criando Usuário sebastiana atribuindo a grupo GRP_VEN"
useradd sebastiana -c "Sebastiana clementina" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
echo "Criando Usuário roberto atribuindo a grupo GRP_VEN"
useradd roberto -c "Roberto Jeferson" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

echo "Criando Usuário josefina atribuindo a grupo GRP_SEC"
useradd josefina -c "Josefina dos anjos" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
echo "Criando Usuário amanda atribuindo a grupo GRP_SEC"
useradd amanda -c "Amanda Pereira" -m -s /bin/bash  -p $(openssl passwd -6 Senha123) -G GRP_SEC
echo "Criando Usuário rogerio atribuindo a grupo GRP_SEC"
useradd rogerio -c "Rogerio gonçalves" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "configurando diretorios" 
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

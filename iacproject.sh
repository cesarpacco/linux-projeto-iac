#!./bin/bash

echo "Criando Diretórios"

mkdir /publico

mkdir /adm
 
mkdir /ven

mkdir /sec

echo "Diretórios Criados"

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados"

echo "Criando Usuários"

useradd carlos -c "Carlos do ADM" -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_ADM
useradd maria  -c "Maria do ADM" -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_ADM
useradd joao -c "João do ADM"  -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_ADM

useradd debora -c "Débora do VEN" -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_VEN
useradd sebastiana  -c "Sebastiana do VEN" -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_VEN
useradd roberto -c "Roberto do VEN"  -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_VEN

useradd josefina -c "Josefina do SEC" -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_SEC
useradd amanda  -c "Amanda do SEC" -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_SEC
useradd rogerio -c "Rogéio do SEC"  -m -s /bin/bash -p $(openssl passwd novasenha) -G GRP_SEC

echo "Usuarios Criados"

echo "Alterando Permissões"

chmod 777 publico
chmod 770 adm ven sec

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

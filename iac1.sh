#!/bin/bash
echo  "criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando os Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os Usuários"

useradd carlos -c "Carlos Antonio" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd maria -c "Maria Julia" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd joao -c "João Pedro" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd debora -c "Debora Silva" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd sebastiana -c "Sebastiana Francisca" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd roberto -c "Roberto Firmino" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd josefina -c "Josefina Andrade" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd amanda -c "Amanda Araujo" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd rogerio -c "Rogerio Silva" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 Senha123)

echo "Definindo as permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluído"

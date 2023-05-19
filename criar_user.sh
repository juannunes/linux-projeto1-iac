#!/bin/bash

echo "Criando usuários convidados para o sistema"

useradd guest1 -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd guest1 -e

useradd guest2 -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd guest2 -e

useradd guest3 -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd -6 Senha123)
passwd guest3 -e

echo "Concluído"

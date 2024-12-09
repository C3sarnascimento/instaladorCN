#!/bin/bash

# Atualizar o sistema
echo "Atualizando o sistema..."
sudo apt-get update && sudo apt-get upgrade -y

# Instalar dependências
echo "Instalando dependências..."
sudo apt install -y git nodejs npm pm2

# Clonar repositório
echo "Clonando repositório..."
cd /home
git clone https://github.com/C3sarnascimento/instaladorCN.git instalador

# Ajustar permissões
echo "Ajustando permissões..."
sudo chmod -R 777 instalador
cd instalador

# Executar scripts adicionais
echo "Executando instalação..."
./install_primaria || { echo "Erro ao executar install_primaria"; exit 1; }

# Configuração final
echo "Instalação concluída com sucesso!"

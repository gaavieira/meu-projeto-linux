!/bin/bash

VERDE='\033[0;32m'
AMARELO='\033[1;33m'
SEM_COR='\033[0m'

echo -e "${AMARELO}--- Iniciando Faxina no Linux ---${SEM_COR}"

mkdir -p ~/projeto/bagunça ~/projeto/backup

if ls ~/projeto/bagunça/*.txt >/dev/null 2>&1; then
    mv ~/projeto/bagunça/*.txt ~/projeto/backup/
    echo -e "${VERDE}✔ Arquivos movidos para o backup com sucesso!${SEM_COR}"
else
    echo -e "${AMARELO}⚠ Ninguém esqueceu lixo na pasta bagunça hoje.${SEM_COR}"
fi

echo "Relatório gerado em: $(date)" >> relatorio.log

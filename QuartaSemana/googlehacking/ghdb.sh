#!/bin/bash

# Use o comando `xdg-open` para abrir no navegador padrão, em vez de usar "firefox" diretamente
search="xdg-open"

# Verifique se o argumento foi passado
if [ -z "$1" ]; then
  echo "Uso: $0 <alvo>"
  exit 1
fi

alvo="$1"

echo "Pesquisando no Pastebin..."
$search "https://google.com/search?q=site:pastebin.com+$alvo" > /dev/null 2>&1

echo "Pesquisando no Trello..."
$search "https://google.com/search?q=site:trello.com+$alvo" > /dev/null 2>&1

echo "Pesquisando arquivos específicos..."
$search "https://google.com/search?q=site:+$alvo+ext:php+OR+ext:asp+OR+ext:txt" > /dev/null 2>&1

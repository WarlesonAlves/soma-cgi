#!/bin/bash

# Função para decodificar strings tipo URL (ex: %20 vira espaço)
urldecode() {
    local data="${1//+/ }"
    printf '%b' "${data//%/\\x}"
}

echo "Content-type: text/html"
echo ""

# Lê os dados enviados via POST
read -n "$CONTENT_LENGTH" POST_DATA

# Extrai os parâmetros e decodifica
num1=$(echo "$POST_DATA" | sed -n 's/.*num1=\([^&]*\).*/\1/p')
num2=$(echo "$POST_DATA" | sed -n 's/.*num2=\([^&]*\).*/\1/p')

num1=$(urldecode "$num1")
num2=$(urldecode "$num2")

# Verifica se são números válidos
if [[ "$num1" =~ ^-?[0-9]+$ && "$num2" =~ ^-?[0-9]+$ ]]; then
    soma=$((num1 + num2))
    resultado="<h1>Resultado: $num1 + $num2 = $soma</h1>"
else
    resultado="<h1>Erro: Entradas inválidas. Digite apenas números.</h1>"
fi

# Exibe resultado em HTML
cat <<EOF
<html>
<head><title>Soma CGI</title></head>
<body>
    $resultado
</body>
</html>
EOF


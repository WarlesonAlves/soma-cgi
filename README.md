# Soma CGI com Bash

## Descrição

Projeto simples que implementa um script CGI em Bash para somar dois números fornecidos via formulário web.  

O script recebe os números, processa a soma no backend usando shell script e exibe o resultado em uma nova aba do navegador.

---

## Tecnologias usadas

- Bash (Shell Script)
- CGI (Common Gateway Interface)
- Apache2 (servidor web para execução do CGI)
- HTML básico para interface de usuário

---

## Como usar

1. Configure o Apache para executar scripts CGI. Exemplo para Ubuntu:

bash
sudo a2enmod cgi
sudo systemctl restart apache2

2. Coloque os scripts na pasta /usr/lib/cgi-bin/ (ou conforme configuração do seu Apache).
3. Acesse o formulário via navegador:
![image](https://github.com/user-attachments/assets/0ac98f87-48d2-4367-ab82-b5447ba5956e)
4. Insira os dois números e clique em Somar. O resultado aparecerá em uma nova aba.

Estrutura do projeto

![image](https://github.com/user-attachments/assets/e1d6a72e-94de-4206-8531-88e17f31ed09)


Contato:

GitHub: https://github.com/WarlesonAlves

LinkedIn: https://www.linkedin.com/in/warleson-alves-4a5618143/

Observações finais
Este projeto serve como exemplo para entender o funcionamento básico de CGI com Bash e integração com servidor web.
Pode ser expandido para aplicações mais complexas conforme necessidade.

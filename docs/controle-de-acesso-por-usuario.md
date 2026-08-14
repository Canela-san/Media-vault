# Controlando o acesso a bibliotecas por usuário

O Jellyfin permite decidir, por usuário, quais bibliotecas ficam visíveis. É útil sempre que você quer que só determinadas contas enxerguem certas pastas — por exemplo, para manter algo restrito ao seu próprio login enquanto outras pessoas da casa usam contas separadas.

Essa configuração é feita inteiramente pelo painel administrativo, depois que os containers já estão no ar — não existe nada disso no `docker-compose.yml` ou em qualquer arquivo do repositório, já que é um dado de configuração do servidor, não de código.

## Como configurar

**Painel Administrativo → Usuários**

1. Crie uma conta separada para cada pessoa/dispositivo que vai acessar o servidor (em vez de todo mundo usar a conta de administrador).
2. Clique em uma conta e vá até **Acesso a Bibliotecas**.
3. Desmarque **Permitir acesso a todas as bibliotecas**.
4. Marque manualmente só as bibliotecas que aquela conta deve enxergar.

Uma biblioteca desmarcada para um usuário simplesmente não aparece nos apps (celular, TV, web) quando logado com aquela conta — sem indicar de forma alguma que ela existe.

## Dica

Mantenha sua própria conta com acesso a tudo e crie contas limitadas para quem mais for usar a TV/app no dia a dia. Isso também facilita configurar controle parental (classificação indicativa) por usuário, se for o caso, em **Acesso a Conteúdo por Classificação Etária** na mesma tela.

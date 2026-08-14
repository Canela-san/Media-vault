# Configurando o Jellyfin

## Primeira execução

Acesse `http://IP-DO-SERVIDOR:8096`. O assistente inicial vai pedir:

1. Idioma da interface.
2. Criação do usuário administrador.
3. Adição de bibliotecas de mídia (pode pular aqui e adicionar depois, veja abaixo).
4. Configurações de acesso remoto — deixe desmarcado se o uso for só na rede local.

## Adicionando bibliotecas

**Painel Administrativo → Bibliotecas → Adicionar Biblioteca Multimídia**

Para cada pasta que você organizou:

- **Tipo de conteúdo**: Filmes, Séries ou Vídeos Caseiros (esse último não busca metadados, ideal para gravações pessoais).
- **Pastas**: aponte para o caminho correspondente dentro do container, por exemplo `/media/library1` (que é onde o `MEDIA_PATH_1` do host foi montado — veja `docker-compose.yml`).
- **Metadados**: deixe os provedores padrão (TheMovieDB, etc.) para filmes/séries já organizados; desative para bibliotecas de vídeos caseiros.

Depois de adicionar, o Jellyfin faz o primeiro scan automaticamente. Novos arquivos adicionados depois são detectados por scans periódicos ou podem ser forçados em **Painel → Bibliotecas → ⋮ → Scan**.

## Transcodificação (opcional)

Se a TV ou o app do celular tiver dificuldade para reproduzir algum formato (codecs incomuns, HDR, etc.), o Jellyfin transcodifica sob demanda. Isso consome CPU; se a máquina tiver uma GPU Intel ou AMD, vale habilitar a aceleração por hardware em **Painel → Reprodução** e descomentar a seção `devices` no `docker-compose.yml`.

## Próximo passo

[Restringir o acesso de bibliotecas por usuário →](controle-de-acesso-por-usuario.md)

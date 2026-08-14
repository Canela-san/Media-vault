# Organizando a mídia com o tinyMediaManager

O tinyMediaManager (TMM) roda como um app gráfico dentro do container, acessado pelo navegador em `http://IP-DO-SERVIDOR:5800` — não precisa instalar nada no seu computador.

## Fluxo básico

1. Abra a interface web do TMM.
2. Em **Filmes** ou **Séries**, adicione uma "Data Source" apontando para `/storage/library1` (ou `library2`, etc. — esses são os caminhos definidos pelas variáveis `MEDIA_PATH_N` no `.env`).
3. Clique em **Update Source(s)** para o TMM escanear os arquivos.
4. Selecione os itens e use **Search & Scrape** para buscar metadados (capa, sinopse, ano, elenco) em provedores como TheMovieDB.
5. Use **Rename** para renomear e mover os arquivos para a estrutura de pastas que o Jellyfin espera, por exemplo:

```
Nome do Filme (2024)/Nome do Filme (2024).mkv
Nome da Série/Season 01/Nome da Série - S01E01.mkv
```

Depois de organizados, os arquivos aparecem automaticamente no Jellyfin (que só precisa fazer um scan de biblioteca).

## Uma ressalva importante sobre a versão gratuita

A versão gratuita do tinyMediaManager tem um limite de itens que podem ser identificados/raspados por licença (na ordem de algumas dezenas de filmes e séries). Para acervos maiores, é necessário comprar uma licença anual de baixo custo (na casa de €10–12) para desbloquear a versão PRO. Vale conferir o [site oficial](https://www.tinymediamanager.org/purchase/) para os números atuais antes de decidir.

### Alternativas, se isso for um problema

- **Nomear manualmente seguindo a convenção do Kodi/Jellyfin** (como no exemplo acima) e deixar o próprio Jellyfin buscar os metadados — ele tem scrapers embutidos e gratuitos, sem esse tipo de limite. Funciona bem se os nomes de arquivo já forem razoavelmente claros. É a opção mais simples: um serviço a menos para manter.
- **[Filebot](https://www.filebot.net/)**: outra ferramenta de renomeação em massa bem conhecida na comunidade de self-hosting, com licenciamento próprio (também pago para uso intensivo, mas com regras diferentes do TMM). Pode substituir o TMM no docker-compose caso prefira testar essa opção.

Para vídeos pessoais/caseiros sem necessidade de metadados (ano, sinopse, capa etc.), muitas vezes nem vale a pena passar pelo TMM — basta organizar em pastas simples e deixar essa biblioteca sem scraper nenhum no Jellyfin.

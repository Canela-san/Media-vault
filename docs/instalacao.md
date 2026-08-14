# Instalação

Pré-requisitos no Pop!OS:

- [Docker Engine](https://docs.docker.com/engine/install/ubuntu/) (Pop!OS usa a base do Ubuntu, então o guia oficial do Ubuntu funciona)
- Plugin `docker compose` (já vem junto em instalações recentes do Docker Engine)

Verifique com:

```bash
docker --version
docker compose version
```

## 1. Clonar o repositório

```bash
git clone https://github.com/SEU_USUARIO/media-vault.git
cd media-vault
```

## 2. Configurar as variáveis de ambiente

```bash
cp .env.example .env
nano .env   # ou seu editor de preferência
```

Ajuste principalmente:

- `MEDIA_PATH_1`, `MEDIA_PATH_2`, ... → caminhos reais das suas pastas de vídeo no Pop!OS.
- `PUID` / `PGID` → rode `id -u` e `id -g` no terminal e use os valores retornados, para evitar problemas de permissão nos arquivos.

Adicionando mais pastas: copie o padrão `MEDIA_PATH_N` no `.env` e replique a linha de volume correspondente em `docker-compose.yml`, em ambos os serviços (ou só no `jellyfin`, se for uma pasta que você não precisa organizar pelo tinyMediaManager).

## 3. Subir os containers

```bash
docker compose up -d
```

Isso baixa as imagens do Jellyfin e do tinyMediaManager e inicia os dois serviços em segundo plano.

## 4. Acessar as interfaces

| Serviço | Endereço | Observação |
|---|---|---|
| Jellyfin | `http://IP-DO-SERVIDOR:8096` | Assistente de primeira execução vai pedir para criar o usuário admin |
| tinyMediaManager | `http://IP-DO-SERVIDOR:5800` | Interface gráfica completa, direto no navegador |

Para descobrir o IP do servidor na rede local:

```bash
./scripts/get-lan-ip.sh
```

## Próximos passos

1. [Organizar os arquivos com o tinyMediaManager](organizando-com-tinymediamanager.md)
2. [Configurar bibliotecas no Jellyfin](configurando-jellyfin.md)
3. [Instalar o app na Smart TV Samsung](smart-tv-samsung.md)
4. [Restringir o acesso de bibliotecas por usuário](controle-de-acesso-por-usuario.md)

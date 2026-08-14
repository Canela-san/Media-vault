# Acessando pela Smart TV Samsung

Diferente do VLC (removido da Samsung Store), o Jellyfin tem um app nativo para Tizen que resolve exatamente esse problema.

## TVs de 2021 em diante

Desde o início de 2026, o Jellyfin passou a ser distribuído oficialmente na Samsung Store para modelos Tizen de 2021 em diante. Para instalar:

1. Na TV, abra a **Samsung Apps Store**.
2. Procure por "Jellyfin".
3. Instale normalmente, como qualquer outro app.
4. Abra o app, informe o endereço do servidor (`http://IP-DO-SERVIDOR:8096`, obtido com `./scripts/get-lan-ip.sh`) e faça login com o usuário criado no Jellyfin.

A disponibilidade pode variar por região e exige a TV atualizada com a versão mais recente do firmware — se o app não aparecer na busca, vale atualizar o software da TV primeiro.

## TVs mais antigas (2017–2020, Tizen 3.0+)

Modelos mais antigos ainda não recebem o app pela loja oficial. A comunidade mantém uma ferramenta que envia (sideload) o app Jellyfin direto para a TV via modo desenvolvedor — processo oficial da Samsung, não anula garantia, mas exige alguns passos extras (habilitar o modo desenvolvedor na TV e rodar um comando a partir de outra máquina na mesma rede). Vale pesquisar o estado atual dessa ferramenta antes de seguir, já que esse tipo de projeto muda com frequência.

## Alternativas, se o app não for uma opção

- **Navegador da TV**: o Jellyfin tem uma web app; algumas Smart TVs conseguem abri-la direto pelo navegador embutido.
- **Cast a partir do celular**: os apps oficiais do Jellyfin (Android/iOS) suportam enviar o vídeo para dispositivos compatíveis na rede.
- **App genérico de DLNA** na TV, já que o Jellyfin também expõe as bibliotecas via DLNA (mantenha as portas `1900/udp` e `7359/udp` do `docker-compose.yml` habilitadas para isso).

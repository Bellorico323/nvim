# Neovim Keymaps

> `<leader>` = `Space`

---

## LSP

Os comandos de LSP funcionam quando o cursor está sobre um símbolo (variável, função, tipo, etc).

| Comando       | Ação                                              |
|---------------|---------------------------------------------------|
| `gd`          | Ir para a definição do símbolo sob o cursor       |
| `gr`          | Listar todas as referências do símbolo            |
| `K`           | Exibir documentação/hover do símbolo              |
| `<leader>rn`  | Renomear símbolo (refatora em todos os arquivos)  |
| `<leader>ca`  | Exibir code actions (fixes, imports, etc)         |
| `<leader>f`   | Formatar o arquivo atual                          |

### Servidores instalados

| Linguagem           | Servidor                         |
|---------------------|----------------------------------|
| Go                  | `gopls`                          |
| TypeScript/JS       | `ts_ls`                          |
| Rust                | `rust_analyzer`                  |
| Dockerfile          | `dockerls`                       |
| docker-compose.yaml | `docker_compose_language_service`|

### Completion (nvim-cmp)

| Comando     | Ação                        |
|-------------|-----------------------------|
| `<C-Space>` | Forçar abertura do menu      |
| `<CR>`      | Confirmar sugestão           |
| `<C-e>`     | Fechar menu                  |
| `<C-f>`     | Rolar docs para baixo        |
| `<C-b>`     | Rolar docs para cima         |

---

## Harpoon

O Harpoon serve para marcar arquivos que você usa com frequência e navegar entre eles instantaneamente, sem precisar do Telescope ou do explorer.

### Fluxo básico

1. Abra um arquivo que você quer "fixar"
2. Pressione `<leader>a` para adicioná-lo à lista
3. Repita para até 4 arquivos
4. Use `<C-h>` / `<C-t>` / `<C-n>` / `<C-s>` para pular direto para cada um

### Comandos

| Comando    | Ação                                        |
|------------|---------------------------------------------|
| `<leader>a`| Adicionar arquivo atual à lista             |
| `<C-h>`    | Ir para o arquivo 1 da lista                |
| `<C-t>`    | Ir para o arquivo 2 da lista                |
| `<C-n>`    | Ir para o arquivo 3 da lista                |
| `<C-s>`    | Ir para o arquivo 4 da lista                |
| `<C-m>`    | Abrir quick menu da lista                   |
| `<C-e>`    | Abrir lista via Telescope (com preview)     |
| `<C-S-P>`  | Ir para o arquivo anterior da lista         |
| `<C-S-N>`  | Ir para o próximo arquivo da lista          |

---

## Telescope

| Comando      | Ação                        |
|--------------|-----------------------------|
| `<leader>ff` | Buscar arquivos              |
| `<leader>fg` | Buscar texto (live grep)     |
| `<leader>fb` | Listar buffers abertos       |
| `<leader>fh` | Buscar na documentação       |

---

## Terminal (ToggleTerm)

| Comando      | Ação                                |
|--------------|-------------------------------------|
| `<C-\>`      | Toggle terminal horizontal (bottom) |
| `<leader>tv` | Toggle terminal vertical (lado)     |
| `<leader>tf` | Toggle terminal flutuante           |
| `<Esc>`      | Sair do modo terminal               |

---

## Buffers (Bufferline)

| Comando      | Ação                                |
|--------------|-------------------------------------|
| `<Tab>`      | Próximo buffer                      |
| `<S-Tab>`    | Buffer anterior                     |
| `<leader>bc` | Fechar buffer atual                 |

---

## Geral

| Comando      | Ação                                |
|--------------|-------------------------------------|
| `<leader>cd` | Abrir file explorer (netrw)         |
| `<leader>y`  | Copiar para clipboard do sistema    |
| `<leader>p`  | Colar do clipboard do sistema       |

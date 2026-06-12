vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
-- Pula do terminal para o editor (janela acima) sem fechar o terminal
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])
-- Pula do editor para o terminal (janela abaixo)
vim.keymap.set("n", "<C-j>", "<C-w>j")

-- Copia para o clipboard do sistema (Windows) com <Leader>y
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])


-- Cola do clipboard do sistema (Windows) com <Leader>p
vim.keymap.set("n", "<leader>p", [["+p]])

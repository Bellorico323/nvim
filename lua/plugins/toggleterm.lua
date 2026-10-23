-- Esconde os outros terminais e mostra só o escolhido (efeito de "aba")
local function show_only(id)
  for _, t in pairs(require("toggleterm.terminal").get_all()) do
    if t.id ~= id and t:is_open() then t:close() end
  end
  local term = require("toggleterm.terminal").get_or_create_term(id, nil, "horizontal")
  if term:is_open() then term:focus() else term:open() end
end

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    shade_terminals = false,
    persist_size = true,
    persist_mode = true,
  },
  keys = {
    -- v:count repassa o número digitado antes (ex: 2<C-\> abre o terminal 2)
    { [[<C-\>]],    [[<cmd>execute v:count . "ToggleTerm direction=horizontal"<cr>]], desc = "Terminal embaixo" },
    { "<leader>t1", function() show_only(1) end,                  desc = "Terminal 1" },
    { "<leader>t2", function() show_only(2) end,                  desc = "Terminal 2" },
    { "<leader>ts", "<cmd>TermSelect<cr>",                          desc = "Escolher terminal" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>",   desc = "Terminal lateral" },
    { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>",      desc = "Terminal flutuante" },
  },
}

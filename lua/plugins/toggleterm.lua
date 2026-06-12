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
    { [[<C-\>]],    "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Terminal embaixo" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>",   desc = "Terminal lateral" },
    { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>",      desc = "Terminal flutuante" },
  },
}

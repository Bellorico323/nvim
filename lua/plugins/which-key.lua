return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 400,
    icons = { mappings = true },
    spec = {
      { "<leader>t", group = "Terminal" },
      { "<leader>b", group = "Buffer" },
      { "<leader>g", group = "Git" },
    },
  },
}

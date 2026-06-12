return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      mode = "buffers",
      separator_style = "thin",
      show_buffer_close_icons = true,
      show_close_icon = false,
      diagnostics = "nvim_lsp",
      offsets = {
        {
          filetype = "neo-tree",
          text = "Explorer",
          highlight = "Directory",
          separator = true,
        },
      },
    },
    highlights = {
      fill                 = { bg = "NONE" },
      background           = { bg = "NONE" },
      tab                  = { bg = "NONE" },
      tab_selected         = { bg = "NONE" },
      separator            = { bg = "NONE" },
      separator_selected   = { bg = "NONE" },
      indicator_selected   = { bg = "NONE" },
      buffer_selected      = { bg = "NONE", bold = true, italic = false },
      buffer_visible       = { bg = "NONE" },
    },
  },
  keys = {
    { "<Tab>",       "<cmd>BufferLineCycleNext<cr>", desc = "Próximo buffer" },
    { "<S-Tab>",     "<cmd>BufferLineCyclePrev<cr>", desc = "Buffer anterior" },
    { "<leader>bc", function()
        local bufs = vim.fn.getbufinfo({ buflisted = 1 })
        if #bufs > 1 then
          vim.cmd("bprevious | bdelete #")
        else
          vim.cmd("bdelete")
        end
      end, desc = "Fechar buffer" },
    { "<leader>bo", function()
        local current = vim.api.nvim_get_current_buf()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          if buf ~= current and vim.bo[buf].buflisted then
            vim.cmd("bdelete " .. buf)
          end
        end
      end, desc = "Fechar outros buffers" },
    { "<leader>bt", function()
        vim.o.showtabline = (vim.o.showtabline == 0) and 2 or 0
      end, desc = "Mostrar/esconder bufferline" },
  },
}

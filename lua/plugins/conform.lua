return {
  'stevearc/conform.nvim',
  opts = function()
    local util = require("conform.util")
    
    return {
      formatters_by_ft = {
        lua = { "stylua" },
        rust = { "rustfmt", lsp_format = "fallback" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        go = { "gofmt", lsp_format = "fallback" },
        yaml = { "prettier", stop_after_first = true },
        dockerfile = { lsp_format = "fallback" },
      },
      formatters = {
        prettierd = {
          cwd = util.root_file({ "pnpm-workspace.yaml", "pnpm-lock.yaml", "package.json" }),
        },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
      },
    }
  end,
}

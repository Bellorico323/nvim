return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rustfmt", lsp_format = "fallback" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      go = { "gofmt", lsp_format = "fallback" }
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    }
  }
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  lazy = false,
  config = function()
    require('nvim-treesitter').install({
      'lua',
      'tsx',
      'typescript',
      'rust',
      'dockerfile',
      'yaml',
      'prisma',
    })

    -- O branch main não liga o highlighting sozinho: ativa em todo buffer com parser disponível
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end
}

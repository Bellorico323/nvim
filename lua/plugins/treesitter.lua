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
  end
}

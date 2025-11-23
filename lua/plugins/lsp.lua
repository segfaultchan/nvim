return {
-- ez install lsp servers
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        'bash-language-server',
        'lua_ls',
        'pyright',
        'rust_analyzer',
        'clangd',
        'gopls',
        'vtsls',
      },
    },
  },
-- for built in lsp server
  { 'neovim/nvim-lspconfig' },
-- package manager for lsp  
  {
    'mason-org/mason.nvim',
    opts = {},
  },
-- cmp for completion lsp
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline'
    },
    opts = {},
  },
}

return {
-- ez install lsp servers
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        -- lsp servers are there, check available to install - ":Mason"
        'bashls',
        'lua_ls',
        'pyright',
        'rust_analyzer',
        'clangd',
        'gopls',
        'vtsls',
      },
    },
    dependencies = {
      -- for built in lsp server
      'neovim/nvim-lspconfig',
      -- package manager for lsp  
      {
        'mason-org/mason.nvim',
        opts = {},
      },

    },
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline'
    },
    event = "InsertEnter",
  },
}

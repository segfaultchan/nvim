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
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-vsnip', -- vsnip engine
      'hrsh7th/vim-vsnip', -- vsnip engine
    },
    event = "InsertEnter",
    -- config for cmp
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- snippet engine (vsnip)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'vsnip' },
          { name = 'buffer' },
        }),
      })
    end,
  },
}

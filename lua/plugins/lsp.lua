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
            { 'mason-org/mason.nvim', opts = {}, },
        },
  },
  -- fucking good cmp written on rust
  {
    'saghen/blink.cmp',

    -- i don't need snippets (maybe need...)
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '1.*',

    opts = {
      -- 'super-tab' for mappings similar to vscode (tab to accept)
      -- 'enter' for enter to accept
      -- 'none' for no mappings
      --
      -- C-space: Open menu or open docs if already open
      -- C-n/C-p or Up/Down: Select next/previous item
      -- C-e: Hide menu
      -- C-k: Toggle signature help (if signature.enabled = true)
      --
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = { preset = 'default' },

      appearance = {
        nerd_font_variant = 'normal'
      },

      completion = {
        documentation = { auto_show = false },
        menu = {
          draw = {
            treesitter = { 'lsp' },
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind" }
            }
          },
        },
        -- ghost_text = { enabled = true },
      },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      snippets = { preset = 'default' },

      -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
      fuzzy = {
        implementation = "rust", -- another option: prefer_rust_with_warning
        sorts = {
          'label',
        },
      }
    },
    opts_extend = { "sources.default" }
  }
}

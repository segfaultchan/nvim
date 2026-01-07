return {
  -- for find files
  -- i dont use it

  -- {
  --   'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
  --   dependencies = { 'nvim-lua/plenary.nvim' }
  -- },

  -- autopairs of {}, "", '', etc
  {
    'saghen/blink.pairs',
    version = '*', -- (recommended) only required with prebuilt binaries

    dependencies = 'saghen/blink.download',
    -- OR build from source, requires nightly:
    -- https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    opts = {
      mappings = {
        enabled = true,
        cmdline = true,
        disabled_filetypes = {},
        pairs = {},
      },
      highlights = {
        enabled = true,
        cmdline = true,
      },
    }
  },
  -- colorizer hex, rgb, etc
  {
    'norcalli/nvim-colorizer.lua',
    lazy = true,
    event = "BufReadPost",
    opts = {
      '*'
    },
  },
--  {
--    '3rd/image.nvim',
--    opts = {
--      backend = "kitty",
--      integrations = {
--        markdown = {
--          enabled = true,
--        },
--      },
--      max_width = 64,
--      scale_factor = 1,
--      editor_only_render_when_focused = false,
--      window_overlap_clear_enabled = true,
--    },
--  }
}

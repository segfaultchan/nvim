return {
  -- for find files
  -- i dont use it

  -- {
  --   'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
  --   dependencies = { 'nvim-lua/plenary.nvim' }
  -- },

  -- autopairs of {}, "", '', etc
  {
    'nvim-mini/mini.pairs',
    opts = {}
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

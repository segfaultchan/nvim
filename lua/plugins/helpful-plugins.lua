return {
  -- autopairs of {}, "", '', etc
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
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

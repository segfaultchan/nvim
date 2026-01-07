return {
  { 'https://github.com/lewis6991/gitsigns.nvim/' },

  -- indent
  {
  'saghen/blink.indent',
  --- @module 'blink.indent'
  --- @type blink.indent.Config
  -- opts = {},
  },

  -- bar at the down
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    init = function()
      vim.opt.showmode = false -- disable modes for clear ui
    end,

    opts = {
      options = {
        theme = 'auto',
        -- more material style
        section_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' }
      }
    }
  }
}

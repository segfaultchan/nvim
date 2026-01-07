return {
  { 'https://github.com/lewis6991/gitsigns.nvim/' },
  {
    'romgrk/barbar.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      animation = false,
      insert_at_start = true,
      auto_hide = true,
      
      sidebar_filetypes = {
        NvimTree = true,
      },
      
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    init = function()
      vim.opt.showmode = false -- disable modes for clear ui
    end,

    opts = {
      options = {
        theme = 'auto'
      }
    }
  }
}

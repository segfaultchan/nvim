return { 
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true
    },
  },
  {
    'ellisonleao/gruvbox.nvim',
    config = true,
    opts = {
      underline = true,
      contrast = "hard",
      transparent_mode = true
    }
  },
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      options = {
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled",
        transparent = true,
        terminal_colors = true,
      }
    },
  },

  {
    'scottmckendry/cyberdream.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      transparent = true,
    }
}
}

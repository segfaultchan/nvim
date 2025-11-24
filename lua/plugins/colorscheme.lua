return { 
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
}

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
}

return {
  'nvimdev/dashboard-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false, 
  opts = function()
    local logo = [[
       ▄████████    ▄████████    ▄██████▄     ▄████████    ▄████████ ███    █▄   ▄█           ███     
      ███    ███   ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███       ▀█████████▄ 
      ███    █▀    ███    █▀    ███    █▀    ███    █▀    ███    ███ ███    ███ ███          ▀███▀▀██ 
      ███         ▄███▄▄▄      ▄███         ▄███▄▄▄       ███    ███ ███    ███ ███           ███   ▀ 
    ▀███████████ ▀▀███▀▀▀     ▀▀███ ████▄  ▀▀███▀▀▀     ▀███████████ ███    ███ ███           ███     
             ███   ███    █▄    ███    ███   ███          ███    ███ ███    ███ ███           ███     
       ▄█    ███   ███    ███   ███    ███   ███          ███    ███ ███    ███ ███▌    ▄     ███     
     ▄████████▀    ██████████   ████████▀    ███          ███    █▀  ████████▀  █████▄▄██    ▄████▀   
                                                                                ▀                     
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        center = {
          { action = "ene | startinsert",         desc = " New File",        icon = " ", key = "n" },
          -- { action = "Telescope",                 desc = " Telescope",       icon = " ", key = "t" },
          { action = "Mason",                     desc = " Mason",           icon = "M ", key = "m" },
          { action = "Lazy",                      desc = " Lazy",            icon = "󰒲 ", key = "l" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    return opts
  end,
}

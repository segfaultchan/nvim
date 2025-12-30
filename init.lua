require('config.settings') -- settings of nvim
require('config.lazy') -- plugin manager lazy.nvim (it is great)

-- nvim colorscheme --
vim.cmd.colorscheme('cyberdream')

-- nvim keymaps --
require('config.keymaps')

-- disables --
require('config.disable')

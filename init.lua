require('config.settings') -- settings of nvim
require('config.lazy') -- plugin manager lazy.nvim (it is great)

-- nvim colorscheme --
vim.cmd.colorscheme('habamax')

-- nvim keymaps --
require('config.keymaps')

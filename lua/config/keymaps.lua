--vim.keymap.set("n", "<C-n>", ":lua vim.o.number = not vim.o.number <CR>", {silent = true, noremap = true})
-- Writing-related keybinds
vim.keymap.set("i", "<C-->", "—")
vim.keymap.set("i", "<C-2>", "«» <Left><Left>")

-- Telescope plugin keybinds (not really keybinds)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Nvim.Tree keybind (Shift+T to open Tree)
vim.keymap.set("n", "T", ":NvimTreeToggle<CR>", { noremap = true, silent = true})

-- Open the diagnostic menu
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
-- Diagnostic menu automatic update
vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
        vim.diagnostic.setloclist({
            open = false
        })
    end,
})

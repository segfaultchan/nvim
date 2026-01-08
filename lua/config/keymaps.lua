-- Toggle number row
vim.keymap.set("n", "<C-n>", ":lua vim.o.number = not vim.o.number <CR>", {silent = true, noremap = true})

-- Writing-related keybinds
vim.keymap.set("i", "<C-->", "—")
vim.keymap.set("i", "<C-2>", "«» <Left><Left>")

-- Open the diagnostic menu
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })

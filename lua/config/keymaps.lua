#vim.keymap.set("n", "<C-n>", ":lua vim.o.number = not vim.o.number <CR>", {silent = true, noremap = true})
vim.keymap.set("i", "<C-->", "—")
vim.keymap.set("i", "<C-2>", "«» <Left><Left>")

vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
        vim.diagnostic.setloclist({
            open = false
        })
    end,
})

vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })

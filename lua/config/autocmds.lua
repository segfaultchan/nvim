-- Diagnostic menu automatic update
vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
        vim.diagnostic.setloclist({
            open = false
        })
    end,
})

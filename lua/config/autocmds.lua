-- Diagnostic menu automatic update
vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
        vim.diagnostic.setloclist({
            open = false
        })
    end,
})

-- Fix cursor changing problem in some terminals
vim.api.nvim_create_autocmd("ExitPre", {
    group = vim.api.nvim_create_augroup("Exit", { clear = true }),
    command = "set guicursor=a:ver90"
})

return {

    { 'saghen/blink.indent' },
    {
        'saghen/blink.pairs',
        version = '*', -- (recommended) only required with prebuilt binaries

        dependencies = 'saghen/blink.download',

        opts = {
            mappings = {
                enabled = true,
                cmdline = true,
                disabled_filetypes = {},
                pairs = {},
            },

            highlights = {
                enabled = true,
                cmdline = true,
            },
        }
    },
    {
        'norcalli/nvim-colorizer.lua',
        lazy = true,
        event = "BufReadPost",
        opts = { '*' }
    }
}

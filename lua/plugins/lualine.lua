return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', 'lewis6991/gitsigns.nvim' },

        sections = {
            lualine_x = {
                {
                    require("noice").api.status.message.get_hl,
                    cond = require("noice").api.status.message.has,
                },
                {
                    require("noice").api.status.command.get,
                    cond = require("noice").api.status.command.has,
                    color = { fg = "#ff9e64" },
                },
                {
                    require("noice").api.status.mode.get,
                    cond = require("noice").api.status.mode.has,
                    color = { fg = "#ff9e64" },
                },
                {
                    require("noice").api.status.search.get,
                    cond = require("noice").api.status.search.has,
                    color = { fg = "#ff9e64" },
                }
            }
        },

        opts = {
            options = {
                theme = 'auto',
                globalstatus = true,

                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                },

                refresh_time = 16,
                events = {
                    'WinEnter',
                    'BufEnter',
                    'BufWritePost',
                    'SessionLoadPost',
                    'FileChangedShellPost',
                    'VimResized',
                    'Filetype',
                    'CursorMoved',
                    'CursorMovedI',
                    'ModeChanged',
                },
            }

        }
    }
}

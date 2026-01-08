return {
    "folke/noice.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
    event = "VeryLazy",

    opts = {
        views = {
            mini = {
                align = "message-right",
                position = {
                    row = "95%",
                    col = "99%"
                },
                size = {
                    width = "auto",
                    height = "auto"
                }
            }
        },

        presets = {
            bottom_search = true,
            command_palette = true
        },

        lsp = {
            progress = {
                enabled = false
            }
        },

        cmdline = {
            enabled = true,
            view = "cmdline",

            format = {
                cmdline = { pattern = "^:", icon = "", lang = "vim" },
                search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
                search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
                filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
                lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
                help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
                input = { view = "cmdline_input", icon = "󰥻 " }, -- Used by input()
            }
        },

        notify = {
            enabled = true,
            view = "notify"
        },

        messages = {
            enabled = true,
            view = "mini",
            view_error = "mini",
            view_warn = "mini",
            view_history = "messages"
        },

        routes = {
            {
                filter = {
                    event = "msg_show",
                    kind = "",
                    find = "written"
                },
                opts = { skip = true }
            }
        }
    }
}

return {
    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            transparent_mode = true,
            italic = {
                strings = true,
                emphasis = true,
                comments = true,
                operators = false,
                folds = true
            }
        }
    },
    {
        "catppuccin/nvim"
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            options = {
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    types = "italic,bold",
                }
            }
        }
    }
}

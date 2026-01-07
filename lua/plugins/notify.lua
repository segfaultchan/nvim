return {
    "rcarriga/nvim-notify",
    opts = {
        stages = "static",
        render = "minimal",
        background_colour = "NotifyBackground",
        timeout = 1250,
        fps = 240,
        level = 1,
        top_down = false,
        icons = {
            DEBUG = "",
            ERROR = "",
            INFO = "",
            TRACE = "✎",
            WARN = ""
        },
    }
}

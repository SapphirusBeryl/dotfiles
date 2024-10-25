require('nightfox').setup({
    options = {
        transparent = true,      -- Disable setting background
        terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false,    -- Non focused panes set to alternative background
        module_default = true,   -- Default enable value for modules 
    },
    palettes = {
        all = { -- Normal terminal colour scheme
            black   = "#16161c",
            blue    = "#26bbd9",
            cyan    = "#59e1e3",
            green   = "#29d398",
            magenta = "#ee64ac",
            red     = "#e95678",
            white   = "#d5d8da",
            orange  = "#fab795",
            yellow  = "#fbc3a7",
        },
    },
    specs = {
        all = {
            syntax = {
                builtin0 = "blue.bright",
                comment = "white.dim",
            },
        },
    },
})

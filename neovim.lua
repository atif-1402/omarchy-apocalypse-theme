return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#110D0C", -- Default background
                base01 = "#8c7b76", -- Lighter background (status bars)
                base02 = "#110D0C", -- Selection background
                base03 = "#8c7b76", -- Comments, invisibles
                base04 = "#F6F4F2", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#F6F4F2", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#ab7c7c", -- Variables, errors, red
                base09 = "#d0b3b3", -- Integers, constants, orange
                base0A = "#D3C4B8", -- Classes, types, yellow
                base0B = "#98a09b", -- Strings, green
                base0C = "#b8bdbc", -- Support, regex, cyan
                base0D = "#a8a8ae", -- Functions, keywords, blue
                base0E = "#b6afb5", -- Keywords, storage, magenta
                base0F = "#f6f3f0", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

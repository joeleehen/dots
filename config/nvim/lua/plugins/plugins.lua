return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },

    -- add catppuccin
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- add nord-like
    {
        "AlexvZyl/nordic.nvim",
    },
    --
    -- trouble list
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        -- leave empty to use default settings
        -- config info at github.com/folke/trouble.nvim
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
}

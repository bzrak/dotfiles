return {
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = true,
        priority = 1000,
        opts = {},
    },

    {
        "shaunsingh/nord.nvim",
        name = "nord",
        lazy = true,
        priority = 1000,
        config = function()
            vim.g.nord_disable_background = false
        end
    },
}

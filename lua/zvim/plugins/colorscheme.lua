return {{
    "folke/tokyonight.nvim",
    stlye = "day",
    config = function()
        require("tokyonight").setup({
            transparent = true
        })
        vim.cmd.colorscheme 'tokyonight-moon'
    end
}}

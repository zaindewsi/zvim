return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- configure nvim-tree
        require("nvim-tree").setup()

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", {
            desc = "Toggle file explorer"
        })
    end
}

return {
   {
      "folke/tokyonight.nvim",
      config = function()
         require("tokyonight").setup {
            transparent = false,
         }
         vim.cmd.colorscheme "tokyonight-storm"
      end,
   },
}

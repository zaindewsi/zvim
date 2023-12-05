return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "thin",
      tab_size = 21,
      diagnostics = "nvim_lsp",
      offsets = {
        {
          filetype = "NvimTree",
          text = "",
          padding = 1,
        },
      },
    },
  },
}

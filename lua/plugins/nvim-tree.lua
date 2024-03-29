local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
   return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
   return
end

-- Replaces auto_close
local tree_cb = nvim_tree_config.nvim_tree_callback
vim.api.nvim_create_autocmd("BufEnter", {
   nested = true,
   callback = function()
      if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match "NvimTree_" ~= nil then
         vim.cmd "quit"
      end
   end,
})

nvim_tree.setup {
   disable_netrw = true,
   hijack_netrw = true,
   auto_reload_on_write = true,
   open_on_setup = false,
   ignore_ft_on_setup = {
      "startify",
      "dashboard",
      "alpha",
   },
   open_on_tab = false,
   hijack_cursor = false,
   update_cwd = true,
   diagnostics = {
      enable = true,
      icons = {
         hint = "",
         info = "",
         warning = "",
         error = "",
      },
   },
   update_focused_file = {
      enable = true,
      update_cwd = true,
      ignore_list = {},
   },
   system_open = {
      cmd = nil,
      args = {},
   },
   filters = {
      dotfiles = false,
      custom = { ".git" },
      exclude = { ".gitignore", "gitsigns", ".env.*", ".env", ".prettierrc", ".eslintrc.*", ".eslintrc" },
   },
   git = {
      enable = true,
      ignore = true,
      timeout = 500,
   },
   view = {
      width = 30,
      hide_root_folder = false,
      side = "left",
      mappings = {
         custom_only = false,
         list = {
            { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
            { key = "h", cb = tree_cb "close_node" },
            { key = "v", cb = tree_cb "vsplit" },
         },
      },
      number = false,
      relativenumber = false,
   },
   trash = {
      cmd = "trash",
      require_confirm = true,
   },
   actions = {
      open_file = {
         quit_on_open = true,
         window_picker = {
            enable = false,
         },
      },
   },
   renderer = {
      highlight_git = true,
      highlight_opened_files = "none",

      indent_markers = {
         enable = false,
      },
      icons = {
         padding = " ",
         symlink_arrow = " ➛ ",
         show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
         },
         glyphs = {
            default = "",
            symlink = "",
            folder = {
               default = "",
               empty = "",
               empty_open = "",
               open = "",
               symlink = "",
               symlink_open = "",
               arrow_open = "",
               arrow_closed = "",
            },
            git = {
               unstaged = "✗",
               staged = "✓",
               unmerged = "",
               renamed = "➜",
               untracked = "★",
               deleted = "",
               ignored = "◌",
            },
         },
      },
   },
}

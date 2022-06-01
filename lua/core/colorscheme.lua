local present, catppuccin = pcall(require, "catppuccin")

if not present then
   return
end

local settings = {
   transparent_background = true,
   term_colors = true,
   styles = {
      comments = "italic",
      conditionals = "italic",
      loops = "NONE",
      functions = "NONE",
      keywords = "NONE",
      strings = "NONE",
      variables = "NONE",
      numbers = "NONE",
      booleans = "NONE",
      properties = "NONE",
      types = "NONE",
      operators = "NONE",
   },
   integrations = {
      treesitter = true,
      native_lsp = {
         enabled = true,
         virtual_text = {
            errors = "italic",
            hints = "italic",
            warnings = "italic",
            information = "italic",
         },
         underlines = {
            errors = "underline",
            hints = "underline",
            warnings = "underline",
            information = "underline",
         },
      },
      lsp_trouble = false,
      cmp = true,
      lsp_saga = false,
      gitgutter = false,
      gitsigns = true,
      telescope = true,
      nvimtree = {
         enabled = true,
         show_root = false,
         transparent_panel = false,
      },
      which_key = false,
      indent_blankline = {
         enabled = true,
         colored_indent_levels = false,
      },
      dashboard = true,
      neogit = false,
      vim_sneak = false,
      fern = false,
      barbar = false,
      bufferline = true,
      markdown = true,
      lightspeed = false,
      ts_rainbow = false,
      hop = false,
      notify = true,
      telekasten = true,
      symbols_outline = true,
   },
}

catppuccin.setup(settings)

local iterm_profile = os.getenv "ITERM_PROFILE"
local flavour = "macchiato"
if iterm_profile == "light" then
   flavour = "latte"
else
   flavour = "macchiato"
end

vim.g.catppuccin_flavour = flavour -- latte, frappe, macchiato, mocha

vim.cmd [[
try
  colorscheme catppuccin
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
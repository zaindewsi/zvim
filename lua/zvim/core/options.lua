local opt = vim.opt
local g = vim.g

g.mapleader = " "
g.maplocalleader = " "

opt.laststatus = 3 -- global statusline
opt.title = true
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.cul = true -- cursor line

-- Indentline
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true

-- disable tilde on end of buffer: https://github.com/neovim/neovim/pull/8546#issuecomment-643643758
opt.fillchars = {
   eob = " ",
}

opt.ignorecase = true
opt.smartcase = true

-- Numbers
opt.number = true
opt.numberwidth = 4
opt.relativenumber = false
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "c"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.timeoutlen = 500
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250
opt.swapfile = false
opt.writebackup = false

opt.backup = false
opt.completeopt = { "menuone", "noselect" }
opt.conceallevel = 0
opt.fileencoding = "utf-8"
opt.hlsearch = true
opt.pumheight = 10
opt.showmode = true
opt.showtabline = 2
opt.wrap = false
opt.scrolloff = 10
opt.sidescrolloff = 10

g.netrw_liststyle = 3

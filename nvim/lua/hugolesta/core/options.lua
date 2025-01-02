vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tab and indentation

opt.tabstop = 2  -- Two spaces for tabs
opt.shiftwidth = 2 -- Two spaces for indent width
opt.expandtab = true -- Expand tab to spaces
opt.autoindent = true -- Copy indent for current line when starting new one
opt.wrap = false

-- Search settings

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, it assumes that you want case sensitive.


opt.cursorline = true

-- Terminal options
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace

opt.backspace = "indent,eol,start" 

-- clipboard

opt.clipboard:append("unnamedplus") -- Use system clipboard

-- split windows

opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

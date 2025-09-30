local opt = vim.opt

-- line numbers
opt.relativenumber = false
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.list = true
opt.listchars = { tab = "··", space = "·", trail = "·" }

-- basic settings
opt.wrap = false
opt.cursorline = true
opt.scrolloff = 10
opt.confirm = true

-- preview substitutions live, as you type!
opt.inccommand = "split"

-- don't show the mode, since it's already in the status line
opt.showmode = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- backspace
opt.backspace = "indent,eol,start"

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

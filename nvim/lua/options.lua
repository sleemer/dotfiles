local opt = vim.opt
local api = vim.api

-- line numbers
opt.relativenumber = false
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

api.nvim_create_autocmd("FileType", {
  pattern = { "go" },
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
  end
})

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- backspace
opt.backspace = "indent,eol,start"

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- split windows
opt.splitright = true
opt.splitbelow = true

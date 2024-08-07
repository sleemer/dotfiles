vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " " 

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    }
  }
}
local opts = {}

require("lazy").setup(plugins, opts)
require("catppuccin").setup({
  flafour = "frappe"
});
vim.cmd.colorscheme "catppuccin-frappe"
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>', {})

local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = { "lua", "jsonnet" },
  highlight = { enable = true },
  indent = { enable = true },
})

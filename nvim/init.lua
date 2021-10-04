
local fn = vim.fn
local execute = vim.api.nvim_commnad

-- Auto install packer.nvim if it does not exists
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd "autocmd BufWritePost plugins.lua PackerCompile"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- Colorscheme related stuff
cmd "syntax on"

--local base16 = require "base16"

-- blankline

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require("nvim-autopairs").setup()
require("lspkind").init()

-- Hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

require('nvim_comment').setup()

-- Modules
require "plugins"
require "misc-utils"
require "config"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

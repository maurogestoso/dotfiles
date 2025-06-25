vim.g.mapleader = " "

-- set indent to 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- always show sign column for diagnostics
vim.cmd("set signcolumn=yes")

-- show line numbers (hybrid mode: absolute + relative)
vim.cmd("set number")
vim.cmd("set relativenumber")



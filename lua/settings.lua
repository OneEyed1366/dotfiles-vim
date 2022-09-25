local global = vim.o
local window = vim.wo
local buffer = vim.bo
local cmd = vim.cmd

global.completeopt = "menuone,noselect"
global.number = true
global.relativenumber = true

cmd[[
colorscheme onedarkpro

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype yaml setlocal ts=4 sw=4 sts=0 expandtab

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype javascriptreact setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescriptreact setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype dart setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 sts=0 expandtab

autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype lua setlocal ts=4 sw=4 sts=0 expandtab
]]

vim.cmd([[
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
]])

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'yggdroot/indentLine'
    Plug 'akinsho/bufferline.nvim'
    Plug('folke/tokyonight.nvim', { branch = 'main' })
    Plug 'neoclide/coc.nvim'
    Plug 'tpope/vim-commentary'
    Plug 'wakatime/vim-wakatime'
    Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install()'] })
    Plug('junegunn/fzf.vim')
    Plug 'nvim-lualine/lualine.nvim'
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mhinz/vim-startify'
vim.call('plug#end')

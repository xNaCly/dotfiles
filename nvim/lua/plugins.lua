-- check if vimplug is installed, if not install it
vim.cmd([[
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
]])

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
    -- git integration
    Plug 'lewis6991/gitsigns.nvim'
    -- copilot
    Plug 'github/copilot.vim'
    -- sticky scroll
    Plug 'nvim-treesitter/nvim-treesitter-context'

    -- toggle floating term
    Plug 'akinsho/toggleterm.nvim'

    -- highlights indent
    Plug 'yggdroot/indentLine'

    -- display buffers and tabs nicely
    Plug 'akinsho/bufferline.nvim'

    -- color theme / sheme
    Plug('folke/tokyonight.nvim', { branch = 'main' })

    -- vscode extension provider
    Plug 'neoclide/coc.nvim'

    -- comment helper
    Plug 'tpope/vim-commentary'

    -- time tracking
    Plug 'wakatime/vim-wakatime'

    -- fuzzy finder
    Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install()'] })
    Plug('junegunn/fzf.vim')

    -- markdown preview
    vim.cmd[[Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }]]

    -- status line
    Plug 'nvim-lualine/lualine.nvim'

    -- file explorer
    Plug 'nvim-tree/nvim-tree.lua'

    -- syntax highlighting and parser
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})

    -- icons for everything, file explorer, tabs, statusline
    Plug 'nvim-tree/nvim-web-devicons'

    -- automatically add "([ pairs if first one is typed
    Plug 'jiangmiao/auto-pairs'

    -- startup interface
    Plug 'mhinz/vim-startify'

    -- color highlighting
    Plug 'norcalli/nvim-colorizer.lua'
vim.call('plug#end')

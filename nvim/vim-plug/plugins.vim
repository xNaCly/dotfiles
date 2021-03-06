" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'iamcco/markdown-preview.nvim'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'neoclide/coc.nvim'
    Plug 'tpope/vim-commentary'
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    Plug 'wakatime/vim-wakatime'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mhinz/vim-startify'
call plug#end()

" colorscheme catppuccin
let g:tokyonight_style = "night"
colorscheme tokyonight

let g:ale_linters = {
  \ 'c': ['clang']
  \}

let g:netrw_banner = 0
let g:netrw_winsize = 25

lua << END
-- stylua: ignore

require'colorizer'.setup()
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#1e1d2f',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.violet } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
END

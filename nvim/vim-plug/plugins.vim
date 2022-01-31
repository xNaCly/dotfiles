" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    Plug 'sheerun/vim-polyglot'
    Plug 'deoplete-plugins/deoplete-clang'
    Plug 'dense-analysis/ale'
    Plug 'scrooloose/NERDTree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mhinz/vim-startify'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:ale_linters = {
  \ 'c': ['clang']
  \}

lua << END
require('lualine').setup({
  options = {
    theme = 'palenight',
  },
})
END

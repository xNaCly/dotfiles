set number
set hidden
filetype plugin on
syntax on                               " Enables syntax highlighing
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set termguicolors
set incsearch
set smartcase
set nobackup
set noshowmode
set showtabline=1
set spell!
set spelllang=en,de

let mapleader="\<space>"
noremap <silent> <Leader>c :nohlsearch<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
noremap <silent> ; <CR>
nmap <silent> gd <Plug>(coc-definition)
set background=dark
set completeopt-=preview
let asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview
au BufWritePost,FileWritePost *.tex :silent !make all

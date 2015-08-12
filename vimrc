" Setup Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax enable

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")


" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set history=8192 " make history bigger
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set incsearch " do incremental searching
set nu " number lines
set hidden " no warning when switching away from hidden buffer
set formatoptions-=o " don't continue comments when pushing o/O
set timeoutlen=1000
set ttimeoutlen=10

" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" smart case-sensitive search
set ignorecase
set smartcase

" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

set mouse=a
set hlsearch

" Show tabs and eols
set list
set listchars=tab:▸\ ,eol:¬,space:.

" Colors
set background=dark
let g:solarized_visibility="low"
let g:solarized_termcolors=256
colorscheme solarized

" Vim-javascript settings
let g:javascript_enable_domhtmlcss=1
" set conceallevel=2
let g:javascript_conceal=1
let g:javascript_conceal_function= "ƒ"
let g:javascript_conceal_null="ø"
let g:javascript_conceal_this="@"
let g:javascript_conceal_return="⇚"
let g:javascript_conceal_undefined="¿"
let g:javascript_conceal_NaN="ℕ"
let g:javascript_conceal_prototype="¶"
let g:javascript_conceal_static="•"
let g:javascript_conceal_super="Ω"

" Syntastic config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5

let mapleader = ' '
let maplocalleader = ' '

" Always show statusline
set laststatus=2

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" fzf buffer browser
" List of buffers
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>b :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

nnoremap <silent> <Leader>f :FZF -m<CR>

" vim-airline config
let g:airline_powerline_fonts = 1

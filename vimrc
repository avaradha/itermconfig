set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
call vundle#end()
syntax on
set hlsearch
hi Search ctermbg=red
hi Search ctermfg=white
execute pathogen#infect()
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spac
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

" autocmd vimenter * NERDTree
set number relativenumber
set numberwidth=4
set cpoptions+=n
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start " make backspace a more flexible
"set listchars=eol:¬,tab:·,trail:~,extends:>,precedes:<
"set lcs=eol:¬,tab:·\ ,trail:~
"set list

" setting plugins
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline#extensions#tabline#enabled = 1
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" enable line numbers
" let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
" autocmd FileType nerdtree setlocal relativenumber
" let g:nerdtree_tabs_autoclose=0
" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
"
let g:closetag_filenames = '*.html,*.blade.php'

" limelight
let g:limelight_conceal_ctermfg = 240
" map <F11> :Goyo <CR>

" fzf.vim
nnoremap <C-p> :GFiles<CR>
nnoremap <C-o> :Buffers<CR>
nnoremap <Leader>gy :Goyo<CR>

"nnoremap <C-l> :NERDTreeToggle<CR>

"netrw settings
nnoremap <C-l> :Vexplore<CR>

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

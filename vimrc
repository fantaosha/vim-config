set nocompatible              " be iMproved, required
filetype off                  " required

let g:vundle_default_git_proto = 'git'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Bundle 'Valloric/YouCompleteMe'

Plugin 'drmikehenry/vim-fontsize'
Plugin 'vim-scripts/buffet.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'rhysd/vim-clang-format'

Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'ingydotnet/yaml-vim'
Plugin 'sgeb/vim-matlab'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-pathogen'
Plugin 'gerw/vim-latex-suite'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'groenewege/vim-less'
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chrisbra/Replay'
Plugin 'jbohren-forks/vim-ros'
Plugin 'mmai/vim-zenmode'
Plugin 'junegunn/goyo.vim'
Plugin 'elzr/vim-json'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'gilligan/vim-lldb'
"Plugin 'jbohren-forks/vim-gitgutter'
Plugin 'Pychimp/vim-luna'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'godlygeek/csapprox'
Plugin 'xolox/vim-misc'
Plugin 'w0ng/vim-hybrid'
Plugin 'altercation/vim-colors-solarized'
Plugin 'dsolstad/vim-wombat256i'
Plugin 'nvie/vim-flake8'
Plugin 'roblillack/vim-bufferlist'
Plugin 'szw/vim-ctrlspace'
Plugin 'majutsushi/tagbar'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'chriskempson/base16-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'powerman/vim-plugin-AnsiEsc'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'tikhomirov/vim-glsl'
Plugin 'sirtaj/vim-openscad'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Yggdroot/indentLine'
Plugin 'rking/ag.vim'
Plugin 'junegunn/fzf'
Plugin 'JuliaEditorSupport/julia-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

execute pathogen#infect()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syntax on
"filetype plugin indent on

"set nocompatible
"set timeout timeoutlen=3000 ttimeoutlen=100
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"set cinoptions=g0
"set cino+=(0,W4,t0
"set cinoptions=:0,l1,t0,g0,(0

set complete=.,w,b,u,t,i

set background=dark

" Function to reverse background
function! ReverseBackground()
  if &bg=="light"
    se bg=dark
  else
    se bg=light
  endif
endfunction
command! RevBG call ReverseBackground()
nnoremap <silent> <leader>r :RevBG<cr>

if has('gui_running')
  colorscheme gruvbox
else
  "colorscheme base16-monokai
  let base16colorspace=256  " Access colors present in 256 colorspace
  let g:molokai_original = 1
  set t_ut =
  colorscheme gruvbox
endif

" Enable mouse for all mode
set mouse=a

" Favorite colorschemes
"colorscheme hybrid
"colorscheme luna
"colorscheme mustang
"colorscheme potts
"colorscheme Tomorrow
"bvemu
""getafe
"thor
""kellys
"badwolf
""blackdust
"molokai
""BusyBee
"twilight
""mustang
"Tomorrow-Night-Eighties
"let g:solarized_termcolors=256
"colorscheme solarized

set guifont=monofur\ for\ Powerline\ 14
"set guifont=Monospace\ Bold\ 8
"set guifont=-*-monofur-plain-*-*-*-9-*-*-*-*-*-*-*
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=l  "remove left-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set foldmethod=syntax
set foldlevel=1000

"let javaScript_fold=1         " JavaScript

set expandtab
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2

set t_Co=256

set nu
set ruler

set nowrap
set hlsearch

set backupdir=~/.vim/backups

"Auto change-dir
"set acd

"LaTeX stuff
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:Tex_DefaultTargetFormat = 'pdf'
let g:tex_flavor='latex'
let g:Imap_UsePlaceHolders = 0
let g:Imap_FreezeImap = 1
let g:Tex_GotoWarning=0
let g:Tex_GotoError=0


let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'evince $*'
let g:Tex_IgnoreLevel = 5
let g:Tex_FoldedSections = 'part,chapter,section,%%fakesection,subsection,subsubsection,paragraph'

" Crazy keys
map k g<UP>
map m <LEFT>
map l <RIGHT>
map , g<DOWN>

"map <UP> g<UP>
"map <DOWN> g<DOWN>

"imap <UP> <ESC>g<UP>a
"imap <DOWN> <ESC>g<DOWN>a

imap <C-W> <ESC><C-W>
map <C-LEFT> <LEFT>
map <C-RIGHT> <RIGHT>
map <C-UP> <UP>
map <C-DOWN> <DOWN>

" Set the filetypes correctly
autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
autocmd BufRead,BufNewFile *.urdf setfiletype xml
autocmd BufRead,BufNewFile *.xacro setfiletype xml
autocmd BufRead,BufNewFile *.cpf setfiletype xml
autocmd BufRead,BufNewFile *.test setfiletype xml
autocmd BufRead,BufNewFile *.sdf setfiletype xml
autocmd BufRead,BufNewFile *.world setfiletype xml
autocmd BufRead,BufNewFile *.moin setfiletype moin
autocmd BufRead,BufNewFile *.ops setfiletype cpp
autocmd BufRead,BufNewFile *.msg setfiletype ruby
autocmd BufRead,BufNewFile *.srv setfiletype ruby
autocmd BufRead,BufNewFile *.rosinstall setfiletype yaml
autocmd BufEnter *.m    compiler mlint
au! BufRead,BufNewFile *.json setfiletype json
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif


"""""""""""""""""""""""""""""""""
" line wrapping and movements
"""""""""""""""""""""""""""""""""
" toggle wrapping with \w
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function! ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    call UnwrapIt()
  else
    echo "Wrap ON"
    call WrapIt()
  endif
endfunction

function! WrapIt()
  set wrap linebreak
  set virtualedit=
  set breakat=\ ^I!@*-+;:,./?       " when wrapping, break at these characters (requires linbreak, see above)
	set showbreak=                    " character to show that a line is wrapped
  setlocal display+=lastline
  noremap  <buffer> <silent> k gk
  noremap  <buffer> <silent> j gj
  noremap  <buffer> <silent> <Up>   gk
  noremap  <buffer> <silent> <Down> gj
  noremap  <buffer> <silent> <Home> g<Home>
  noremap  <buffer> <silent> <End>  g<End>
  inoremap <buffer> <silent> <Up>   <C-o>gk
  inoremap <buffer> <silent> <Down> <C-o>gj
  inoremap <buffer> <silent> <Home> <C-o>g<Home>
  inoremap <buffer> <silent> <End>  <C-o>g<End>
endfunction

function! UnwrapIt()
  set nowrap
  set virtualedit=all
  silent! nunmap <buffer> j
  silent! nunmap <buffer> k
  silent! nunmap <buffer> <Up>
  silent! nunmap <buffer> <Down>
  silent! nunmap <buffer> <Home>
  silent! nunmap <buffer> <End>
  silent! iunmap <buffer> <Up>
  silent! iunmap <buffer> <Down>
  silent! iunmap <buffer> <Home>
  silent! iunmap <buffer> <End>
endfunction

if &wrap
  call WrapIt()
endif

" ctags
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
autocmd FileType cpp map <F4> :TlistToggle<cr>
autocmd FileType cpp map <buffer> <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
autocmd FileType cpp,python nmap <F6> :TagbarToggle<CR>
se tags+=~/.ctags/tags


"au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

"nnoremap ` :GundoToggle<CR>

command! -range SwapArgs <line1>,<line2>s/(\([^,]\+\),\s*\([^,)]\+\)/(\2, \1/ | let @/ = ""

map <C-n> :NERDTreeToggle<CR>

let g:loaded_ros = 1

map <F2> :Bufferlist<CR>

let g:replay_record = 1
let g:replay_speed = 300

function! FU()
  r~/.vim/fu.txt
endfunction

nmap  :call FU()<CR>

"Zenmode
nnoremap <silent> <leader>z :Goyo<cr>
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
let g:goyo_width = 81

"AirLine
set laststatus=2
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
"let g:airline_theme='dark'
"let g:airline_theme='powerlineish'

"Python Flake8
autocmd FileType python map <buffer> <F8> :call Flake8()<CR>
let g:flake8_max_line_length=120
let g:flake8_max_complexity=15

"ctrl-space
set hidden
let g:ctrlspace_use_mouse_and_arrows_in_term=0
let g:airline_exclude_preview = 1

"js
au FileType javascript call JavaScriptFold()

"git gutter
"highlight clear SignColumn
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_max_signs = 1500

" ruby folding is super slow this is a hack to fix it in insert mode
" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window.
"autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
"autocmd InsertLeave * let &l:foldmethod=w:last_fdm

autocmd BufReadPost quickfix AnsiEsc
set makeprg=catkin\ build\ --no-status\ --force-color

" table mode
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4 |
      \ set textwidth=79 |
      \ set expandtab |
      \ set autoindent |
      \ set fileformat=unix

"
" YouCompleteMe options
"

let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1


let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''


let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0


let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'

"nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_filepath_completion_use_working_dir = 0


"let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_python_binary_path = '/usr/bin/python3'

" disable indentline
let g:indentLine_enabled = 0

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" disable swp file generation
set noswapfile
set wrap

" Tagbar sort by order
let g:tagbar_sort = 0

command DeleteSpace %s/\s\+$//e
command DeleteLeadSpace %s/^\s\+//e

function MoveToPrevTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() != 1
    close!
    if l:tab_nr == tabpagenr('$')
      tabprev
    endif
    sp
  else
    close!
    exe "0tabnew"
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc

function MoveToNextTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() < tab_nr
    close!
    if l:tab_nr == tabpagenr('$')
      tabnext
    endif
    sp
  else
    close!
    tabnew
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc

map mt :call MoveToNextTab()<CR>
map mT :call MoveToPrevTab()<CR>
map \mt :call MoveToNextTab()<CR><C-w>H
map \mT :call MoveToPrevTab()<CR><C-w>H

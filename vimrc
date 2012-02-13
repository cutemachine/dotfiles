set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Repositories on github
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'tpope/vim-fugitive'
Bundle 'https://github.com/vim-scripts/project.tar.gz.git'
Bundle 'https://github.com/vim-scripts/fugitive.vim.git'
Bundle 'https://github.com/vim-scripts/matchit.zip.git'
Bundle 'https://github.com/vim-scripts/snipMate.git'
Bundle 'https://github.com/vim-scripts/lua.vim.git'
Bundle 'https://github.com/vim-scripts/EasyMotion.git'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
"
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'

" Other git repositories
" Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required! 

let mapleader=","
set et
set ic
set is
set foldmethod=marker
set nu
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

augroup mkd

  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;

augroup END

augroup filetypedetect
    au BufRead,BufNewFile *.todo setfiletype todo
augroup END

set makeprg=rake

map <C-h> <C-w>h<C-w>_
map <C-j> <C-w>j<C-w>_
map <C-k> <C-w>k<C-w>_
map <C-l> <C-w>l<C-w>_

" Regular expression to filter files and directories in NERDTree.
" Use f in NERDTree to switch on/off the filtering.
let NERDTreeIgnore=['\.png$', '\.wav$']

" Edit the .vimrc file by hitting function key F2.
" You can use :source ~/.vimrc to source the changes, or hit Shift F2.
map <F2> :edit ~/.vimrc<CR>
map <S-F2> :source ~/.vimrc<CR>

" Start the Corna Simulator with F3
map <F3> :!/Applications/CoronaSDK/simulator -project %:p -skin iPhone<CR>
map <S-F3> :!/Applications/CoronaSDK/simulator -project %:p -skin iPad<CR>

" Edit the Corona/Lua snippets with F4
map <F4> :edit ~/.vim/snippets/lua.snippets<CR>

" Toggle the NERDTree Window with F12
map <F12> :NERDTreeToggle<CR>

" Session support. Save Session As and Session Open.
nmap SSA :wa<CR>:mksession! ~/.vimSessions/
nmap SO :wa<CR>:so ~/.vimSessions/

let g:lua_complete_omni = 1

" For Lua editing
set expandtab                           " convert tabs to spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent

" Automatically change to the directory of the file you are working on.
"set autochdir

set nohidden

" Map Esc to leave insert mode to double ii. This is cool, no more reaching
" out to the Esc key.

" settings from StackOverflow threads
set showcmd                             " show partial commands in status line
set ruler                               " show cursor position in status line
set cmdheight=2                         " set height of command line to 1
set incsearch                           " highlight as we search
set nohlsearch                          " turn off highlighting search results
set showmatch                           " show matching brakets
set scrolloff=3                         " begins scrolling 3 lines before top / bottom
set cursorline                          " Highlight the line where the cursor is

" some mappings
" remap ESC in insert mode and command mode to double i
imap ii <C-[>
cmap ii <C-[>

" remap entering ex command mode to ,
map , :

" remap toggle folding to K
map K za

" Use syntax coloring
syntax enable

" switch to nice readable color theme. works well with Lua.
" color inkpot
color Darkblue2

" Use solarized color scheme
"set background=dark
"set background=light
"colorscheme solarized

" Set statusline to show the git branch.
" %{fugitive#statusline()}

" NERDTree settings and mappings
map <Leader>n :NERDTreeToggle<CR>

" Project settings and mappings
nmap <silent> <Leader>p <Plug>ToggleProject

" Appearance {{{
set ruler
" }}}

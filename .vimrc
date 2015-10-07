set nocompatible              " be iMproved, required


filetype off                  " required

" Basic mappings
map <A-j> :bprevious<CR>
map <A-k> :bnext<CR>
map <A-h> :tabprevious<CR>
map <A-l> :tabnext<CR>

"map <C-J> <C-w>j<CR>
"map <C-K> <C-w>k<CR>
"map <C-H> <C-w>h<CR>
"map <C-L> <C-w>l<CR>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Languages
Plugin 'c.vim'
Plugin 'majutsushi/tagbar'
Plugin 'a.vim'
Plugin 'scrooloose/syntastic'
Plugin 'sophacles/vim-bundle-mako'
Plugin 'chrisbra/csv.vim'
Plugin 'Shougo/vinarise.vim'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
" Plugin 'rest.vim'
Plugin 'Rykka/riv.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'avakhov/vim-yaml'

" Python
"Plugin 'klen/python-mode'
"Plugin 'nvie/vim-pyunit'
Plugin 'JarrodCTaylor/vim-python-test-runner'

" Tables
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'godlygeek/tabular'

" Other
Plugin 'bruno-/vim-alt-mappings'
Plugin 'osyo-manga/unite-quickfix'
Plugin 'Shougo/unite-outline'
Plugin 'hewes/unite-gtags'
Plugin 'gtags.vim'
Plugin 'takac/vim-hardtime'
Plugin 'tpope/vim-surround'
Plugin 'kshenoy/vim-signature'
Plugin 'Shougo/vimfiler.vim'
"Plugin 'gcmt/taboo.vim'
Plugin 'vim-nose'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-dispatch'
Plugin 'janko-m/vim-test'


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'mnpk/vim-jira-complete'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'powerline/powerline'
"Plugin 'bling/vim-airline'
Plugin 'edkolev/promptline.vim'
Plugin 'grep.vim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'chrisbra/SudoEdit.vim'
"Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ntpeters/vim-better-whitespace'
" Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/vimshell.vim'
"Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
" Plugin 'indexer.tar.gz'

" ColorScheme "
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'ujihisa/unite-colorscheme'

Plugin 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"let base16colorspace=256

" Airline
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#taboo#enabled = 1

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]
let g:airline#extensions#whitespace#show_message = 1
let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'mixed-indent[%s]'

"let g:airline_theme='murmur'
let g:airline_theme='badwolf'
" ----------------------------

" Vinarise
let g:vinarise_enable_auto_detect = 0

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ['pylint', 'pep8', 'vulture']
let g:syntastic_python_python_exe = 'python2'
let g:syntastic_python_pep8_exe = 'pep8-python2'
let g:syntastic_python_pylint_exe = "pylint2"
let g:syntastic_always_populate_loc_list=1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 1

set laststatus=2

" Pymode
let g:pymode_lint_write = 0
let g:pymode_lint_cwindow = 0
let g:pymode_breakpoint_bind = '<leader>d'
let g:pymode_doc_bind = '<leader>D'
let g:pymode_rope_autoimport = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_completion_on_dot = 0

" NERDTree
let NERDTreeIgnore = ['\.pyc$']

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Promptline
let g:promptline_preset = 'full'
let g:promptline_theme = 'airline'

syntax on
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
filetype plugin indent on

set t_Co=256
set mouse=a
set background=dark
set relativenumber

" Search
set hlsearch
set ignorecase
set smartcase

set colorcolumn=80
set cursorline



" Mapping
"
let g:better_whitespace_filetypes_blacklist = ['unite', 'vimfiler']

let g:BASH_Ctrl_j = 'off'

call unite#filters#matcher_default#use([
	\ 'matcher_context',
	\ 'matcher_hide_hidden_files',
	\ 'matcher_project_ignore_files'])
nnoremap <Leader>f :Unite -start-insert file_rec/async<CR>
nnoremap <Leader>b :Unite buffer<CR>

" Basic mappings
map <A-j> :bprevious<CR>
map <A-k> :bnext<CR>
map <A-h> :tabprevious<CR>
map <A-l> :tabnext<CR>

"map <C-J> <C-w>j<CR>
"map <C-K> <C-w>k<CR>
"map <C-H> <C-w>h<CR>
"map <C-L> <C-w>l<CR>

call plug#begin()

" Languages
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'sophacles/vim-bundle-mako'
Plug 'chrisbra/csv.vim'
Plug 'Shougo/vinarise.vim'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'Rykka/riv.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'avakhov/vim-yaml'
Plug 'critiqjo/lldb.nvim'

" Pyon
"Plu 'klen/python-mode'
"Plu 'nvie/vim-pyunit'
Plug 'JarrodCTaylor/vim-python-test-runner'

" Tables
Plug 'dhruvasagar/vim-table-mode'
Plug 'godlygeek/tabular'

" Other
Plug 'osyo-manga/unite-quickfix'
Plug 'Shougo/unite-outline'
Plug 'hewes/unite-gtags'
Plug 'gtags.vim'
Plug 'takac/vim-hardtime'
Plug 'tpope/vim-surround'
Plug 'kshenoy/vim-signature'
Plug 'Shougo/vimfiler.vim'
Plug 'vim-nose'
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'
Plug 'lyuts/vim-rtags'
Plug 'fidian/hexmode'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ryanoasis/vim-devicons'
Plug 'benekastah/neomake'
Plug 'justmao945/vim-clang'
Plug 'mhinz/vim-grepper'
"Plug 'mhinz/vim-startify'
Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'mnpk/vim-jira-complete'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'edkolev/promptline.vim'
Plug 'grep.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'chrisbra/SudoEdit.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim'

" ColorScheme "
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'
Plug 'flazz/vim-colorschemes'
Plug 'ujihisa/unite-colorscheme'

Plug 'chriskempson/base16-vim'

call plug#end()


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

" Vinarise
let g:vinarise_enable_auto_detect = 0

" YCM
let g:ycm_auto_trigger = 0

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
let NERDTreeIgnore = ['\.pyc$', '\.o$']
let NERDTreeQuitOnOpen=1

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

"call unite#filters#matcher_default#use([
	"\ 'matcher_context',
	"\ 'matcher_hide_hidden_files',
	"\ 'matcher_project_ignore_files'])
"nnoremap <Leader>f :Unite -start-insert file_rec/async<CR>
"nnoremap <Leader>b :Unite buffer<CR>
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> <Leader>b :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

nnoremap <Leader>g :Grepper<CR>
"
"let g:rtagsUseDefaultMappings = 0
"nmap <Leader>rs :Unite rtags/symbol<CR>
"nmap <Leader>rf :Unite rtags/references<CR>
"nmap <Leader>rr :call rtags#JumpTo()<CR>
"nmap <Leader>rv :call rtags#JumpTo('vertical')<CR>

nnoremap <Leader>q :Bclose<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

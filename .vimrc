//Create file ~/.vimrc

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

 "Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
" Exempl. Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sainnhe/everforest'
  Plug 'mtdl9/vim-log-highlighting'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
  autocmd VimEnter * NERDTree
  colorscheme everforest
  let g:airline_theme='simple'
  
  set autoindent 
  set t_Co=256
  set wrap
  set linebreak

  "Yank to general file
  set clipboard+=unnamed

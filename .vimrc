
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" plugin adds files tree
  Plug 'preservim/nerdtree'

" plugin for all basic settings
  Plug 'tpope/vim-sensible'

" plugin adds arline bellow
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" plugin for theme variant
  Plug 'sainnhe/everforest'

"plugin for reading files with extention .log
  Plug 'mtdl9/vim-log-highlighting'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
  autocmd VimEnter * NERDTree
  colorscheme everforest
  let g:airline_theme='simple'

"Set show writing command on
  set showcmd
  
  set autoindent 
  set t_Co=256
  set wrap
  set linebreak
  set relativenumber

  "Yank to clipboard buffer. Works on windows and macOS machines
  set clipboard+=unnamed

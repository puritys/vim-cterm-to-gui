" Basic
syntax on
set nocompatible
set showcmd
set bg=dark
set backspace=2
set tabstop=4 shiftwidth=4  softtabstop=0 expandtab
set t_Co=256 
source $VIMRUNTIME/macros/matchit.vim
set foldmethod=marker
set tabpagemax=100
colorscheme mystyle_white

source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>

set verbosefile=/tmp/vim.log
set runtimepath+=~/.vim/bundle/vim-addon-manager/

call vam#ActivateAddons(['glaive', 'vtd'])
" Initializes all maktaba plugins.
call maktaba#plugin#Detect()
let g:maktaba = maktaba#Maktaba()
let g:vroom_logger = maktaba#log#Logger('DEFAULT')
call g:maktaba#log#SetNotificationLevel(g:maktaba#log#LEVELS.ERROR)



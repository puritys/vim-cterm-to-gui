
if exists('g:loaded_cterm2gui')
  finish
endif

let g:loaded_cterm2gui = 1 

" Get base path
let s:pluginName = "vim-cterm-to-gui"

if !empty(glob($HOME . "/.vim/plugged/" . s:pluginName . "/plugin"))
    let s:path = $HOME . "/.vim/plugged/" . s:pluginName . "/plugin"
elseif !empty(glob($HOME . "/.vim/bundle/" . s:pluginName . "/plugin")) 
    let s:path = $HOME . "/.vim/bundle/" . s:pluginName . "/plugin"
elseif !empty(glob("./plugin"))
    let s:path = "./plugin"
endif

" ---
" Default key map
" ---
:nmap gui :call Cterm2Gui()<CR>

function! Cterm2Gui()
    let s:file= s:path . "/cterm2gui.py"
    pyfile `=s:file`
endfunction


Vim Plugin: Generate guifg and guibg
=============================================================

Generate guifg and guibg from ctermfg and ctermbg

Installation
------------

- Install by the <a href="https://github.com/junegunn/vim-plug" target="_blank">vim-plug</a>
```
Plug 'puritys/vim-cterm-to-gui', {'for': 'vim'}
```

- Install by the <a href="https://github.com/VundleVim/Vundle.vim" target="_blank">vundle</a>
```
Plugin 'puritys/vim-cterm-to-gui'
```



How to use
----------

If you have a highlight setting:

```
hi XXX cterm=28 ctermbg=213
```

Move your cursor to this line and type "gui", it will auto replace by the following gui result.

```
hi XXX ctermfg=28 guifg=#008700 guibg=#ff87ff
```

License
-------
<img src="https://camo.githubusercontent.com/fe2d9e9063dabaf5951ef8f3835bbbc16cec52e3/68747470733a2f2f706f7365722e707567782e6f72672f7a6f72646975732f6c696768746e63616e64792f6c6963656e73652e737667" alt="license">


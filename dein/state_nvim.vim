if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/hanyu_t/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/hanyu_t/.config/dein'
let g:dein#_runtime_path = '/Users/hanyu_t/.config/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/hanyu_t/.config/dein/.cache/init.vim'
let &runtimepath = '/Users/hanyu_t/.config/nvim,/etc/xdg/nvim,/Users/hanyu_t/.local/share/nvim/site,/usr/local/share/nvim/site,/Users/hanyu_t/.config/dein/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.1.6/share/nvim/runtime,/Users/hanyu_t/.config/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/hanyu_t/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/hanyu_t/.config/nvim/after,/Users/hanyu_t/.config/dein/repos/github.com/Shougo/dein.vim'
filetype off

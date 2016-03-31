" tab handling
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" VIM mapping, key binding, etc
nnoremap <Tab> <C-W><C-W>

" pathogen plugin
execute pathogen#infect()

" NERDTree plugin
nnoremap _T :NERDTreeTabsToggle<CR>

" BufExplorer
nnoremap <silent> <F12> :BufExplorer<CR>
nnoremap <silent> <S-F12> :bn<CR>
nnoremap <silent> <C-F12> :bp<CR>

" YouCompleteMe plugin
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/.ycm_extra_conf.py"
nnoremap _I :YcmCompleter GoToDefinition<CR>
nnoremap _Y :YcmCompleter GoToDeclaration<CR>

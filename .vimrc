set number
set showcmd

" highlight as I type
set incsearch

" ignore case sensitive
set ignorecase

" when The = only The found. When the = The and the found
set smartcase

call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'dense-analysis/ale'
call plug#end()


" NERDTree keybindings
nnoremap <C-f> :NERDTreeToggle<CR>

" NERDTRee configs
let NERDTreeShowHidden=1


" NERDTree automations
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

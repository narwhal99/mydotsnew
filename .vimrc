set number

call plug#begin()
	Plug 'preservim/nerdtree'
call plug#end()


" NERDTree keybindings
nnoremap <C-f> :NERDTreeToggle<CR>


" NERDTree automations
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

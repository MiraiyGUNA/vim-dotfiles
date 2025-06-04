:set number
:syntax on 
set cursorline
set incsearch
set hlsearch
set ignorecase
set wildmenu
set ruler
set autoread
set colorcolumn=80


" ==================
" =====AUTO BRACKETS
" ==================
imap { {}<Left>
imap [ []<Left>
imap ( ()<Left>
imap < <><Left>


autocmd BufRead,BufNewFIle *.md setlocal spell spelllang=en_us
autocmd BufRead,BufNewFIle *.txt setlocal spell spelllang=en_us
autocmd BufRead,BufNewFIle *.md setlocal spell spelllang=pt_pt
autocmd BufRead,BufNewFIle *.txt setlocal spell spelllang=pt_pt

colorscheme gruvbox
:set bg=dark
:set listchars=tab:\|\
:set list

" =========================
" =====PLUG PACKAGE MANAGER
" =========================


call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible' " mano, quando faco tab, deve ser aquele autocomplete
Plug 'preservim/nerdtree' " file explorer
Plug 'tribela/vim-transparent' " deixar o vim transparente
Plug 'ryanoasis/vim-devicons' " colocar icons nos filetypes
Plug 'preservim/vim-markdown' " markdown para o vim
Plug 'dense-analysis/ale' " sugestoes de codigo

call plug#end()


" =============
" =====NERDTREE
" =============

" NERD TREE KEYBINDS 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

let g:NERDTreeFileLines = 1

let g:NERDTreeQuitOnOpen = 1

" =================
" =====VIM MARKDOWN
" =================

let g:vim_markdown_folding_disabled = 1

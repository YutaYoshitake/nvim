nnoremap s <Nop>
nmap s <C-w>
set mouse=a
tnoremap <Esc> <C-\><C-n>
nnoremap <Space>t :terminal ++curwin<Enter>

set termguicolors

if has('vim_starting')
    let &t_SI .= "\e[5 q"
    let &t_EI .= "\e[1 q"
    let &t_SR .= "\e[1 q"
endif


nnoremap <silent> <space>fr  <Cmd>History<CR>
nnoremap <silent> <space>ff  <Cmd>Files<CR>
nnoremap <silent> <space>fb  <Cmd>Buffers<CR>
nnoremap <silent> <space>fc  <Cmd>History:<CR>
" nnoremap <silent> <space>fgc  <Cmd>Commits<CR>
nnoremap <silent> <space>fm  <Cmd>Maps<CR>
nnoremap <silent> <space>fh  <Cmd>Helptags<CR>
nnoremap <silent> <space>ft  <Cmd>Tags<CR>

"highlight Comment ctermfg=Green
highlight Constant ctermfg=Brown

set number
noremap <S-Right> <C-w>l
noremap <S-Left> <C-w>h
noremap <S-Up> <C-w>k
noremap <S-Down> <C-w>j

" ranger.vim settings
nnoremap <Space>d <Cmd>Ranger<CR>


" noremap H ^
" noremap L $
" noremap K {
" noremap J }
noremap <S-Up> {
noremap <S-Down> }
noremap <S-Left> ^
noremap <S-Right> $

" inoremap <C-y> <C-h>
" inoremap <C-u> <C-j>
" inoremap <C-k> <Up>
" inoremap <C-j> <Down>
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>
inoremap <S-Left> <Home>
inoremap <S-Right> <End>

" tab settings

set tabstop=4 shiftwidth=4
set smarttab smartindent expandtab
set clipboard=unnamedplus 

augroup vimrc-incsearch-highlight
  au!
  au CmdlineEnter /,\? :set hlsearch
  au CmdlineLeave /,\? :set nohlsearch
augroup END



iab pdb import pdb; pdb.set_trace()

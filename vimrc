set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
"====[statusline stuff]=====
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%) 
set statusline+=%{fugitive#statusline()}
set laststatus=2
set showtabline=2
"====[Change the colors of the statusline for the active buffer]====
hi StatusLine ctermbg=red ctermfg=green
hi StatusLineNC ctermbg=blue ctermfg=black

filetype plugin indent on
filetype on
set ofu=syntaxcomplete#Complete
 
syntax on
set number
set spell
set hlsearch
set showmatch
set autoindent
set history=1000
" set cursorline
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
let mapleader=","
set t_Co=256

"====[json-vim double quote conceal off]====
let g:vim_json_syntax_conceal =0

"====[ Listtrans.vim nmap mappings ]========================
nmap  ;l   :call ListTrans_toggle_format()<CR>
vmap  ;l   :call ListTrans_toggle_format('visual')<CR>

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
"set colorcolumn=81
 
set background=dark
" colorscheme solarized
" colorscheme desert
" colorscheme blackboard
"

"====[TOC commands]====

" Remove all trailing whitespace at the end of a line
:map <F2> :s/\s\+$//<CR>

" Add [text](#)<two spaces> to each line
let @t='I[A](#)  '

" Add two non-breaking spaces to the front of the line
let @i='I&nbsp; &nbsp; '  

" Remove search highlighting
" :map <F3> :nohl<CR>

"====[Pandoc conversions with user defined commands]====

" Create an MSWord file
command ToDocx execute "!pandoc %:p -t docx -o %:p:r.docx"

" Markdown to HTML
command THTML execute "!pandoc --email-obfuscation=none %:p -o  %:p:r.html"

" Markdown to man page
command TMan execute "!pandoc -s -w man %:p -o %:p:r.1"

" Markdown to PDF
command TPDF execute "!pandoc %:p --variable mainfont=Arial -o %:p:r.pdf"

"====[Nerdtree]==============================
" autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

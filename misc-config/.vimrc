"au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

nnoremap <PageUp> :echo "No pageUp for you!"<CR>
vnoremap <PageUp> :<C-u>echo "No pageUp for you!"<CR>
inoremap <PageUp> <C-o>:echo "No pageUp for you!"<CR>

nnoremap <PageDown> :echo "No pageDown for you!"<CR>
vnoremap <PageDown> :<C-u>echo "No PageDown for you!"<CR>
inoremap <PageDown> <C-o>:echo "No PageDown for you!"<CR>

" NERDTree setting defaults to work around http://github.com/scrooloose/nerdtree/issues/489
set formatoptions-=cro

set nocompatible

set expandtab

set shiftround

set autoindent

set smarttab

set linebreak

set history=5000

vnoremap <C-C> "+y
" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de
" votre terminal
set number                " Affiche le numero des lignes
set ruler                 " Affiche la position actuelle du curseur
set wrap                  " Affiche les lignes trop longues sur plusieurs
" lignes
set scrolloff=3           " Affiche un minimum de 3 lignes autour du curseur

" -- Recherche
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule,
" re-active la sensibilite a la casse
set incsearch             " Surligne les resultats de recherche pendant la
" saisie
set hlsearch              " Surligne les resultats de recherche

" -- Beep
set visualbell            " Empeche Vim de beeper

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set noerrorbells          " Empeche Vim de beeper
set belloff=all
" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Active l'utilisation de la souris
set mouse=a

" Met une une ligne rouge a droite de l'ecran (80 char)
set cc=80

" Affiche visuellementles tabs et espaces
set list listchars=tab:\|·,trail:·

" Configure les tabulations (4 espaces)
set tabstop=4
set shiftwidth=4


call plug#begin('~/.vim/plugged')

" bottom bar
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'itchyny/lightline.vim'

" tree but emojie missing
" Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'
Plug 'itchyny/vim-gitbranch'

" brackets pairs / colors
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'

" relative line
Plug 'ericbn/vim-relativize'


" Coding stype private plug
" Plug 'file://'.expand('~/apps/epistyle-master')

" material theme
Plug 'hzchirs/vim-material'

" auto completion of rules
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" auto correction and exec
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" {'do': { -> coc#util#install() }}

Plug 'jackguo380/vim-lsp-cxx-highlight'

" Clang format
Plug 'Chiel92/vim-autoformat'

" for the git diff
Plug 'airblade/vim-gitgutter'
call plug#end()
" ---- Key bind ------


" ###### COC ####
execute "set <M-3>=\e3"
let g:coc_snippet_next = '<M-3>'
" let g:coc_snippet_next = '<tab>'
execute "set <M-2>=\e2"
let g:coc_snippet_prev = '<M-2>'


" ###### Clang format ###
let g:formatterpath = ['~/.clang_format']

noremap <C-k> :Autoformat<CR>

imap <C-K> <Esc>:Autoformat<CR>i

" ##### Git diff #####
execute "set <M-g>=\eg"
nnoremap <M-g> :GitGutterToggle  <cr>
let g:gitgutter_highlight_lines = 1
let g:gitgutter_enabled = 0


" ----- TABS VIM ----
nnoremap tn :tabnew<CR>


"----- Folder gestion -----
"
"map , :Files<CR>
"map <C-o> :NERDTreeToggle<CR>
"let NERDTreeQuitOnOpen = 1
"let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
let g:lightline = {
            \ 'colorscheme': 'challenger_deep',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'gitbranch#name'
            \ },
            \ }

" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>


" -------- OMNICPP --------
set nocp
filetype plugin on
set t_Co=256   " This is may or may not needed.
" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extras=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview





" ----------- brackets color -------
let g:rainbow_active = 1

let g:rainbow_load_separately = [
            \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
            \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
            \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
            \ [ '*.c' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
            \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
            \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'


" ------- THEME COLOR MATERIAL -----
set relativenumber
set number relativenumber

set clipboard=unnamed

if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
    set termguicolors
endif

let g:material_style='oceanic'
set background=dark
colorscheme vim-material


" ---- Ulti Snippets
let g:UltiSnipsExpandTrigger="<C-W>"
let g:UltiSnipsJumpForwardTrigger="<C-W>"
let g:UltiSnipsJumpBackwardTrigger="<C-right>"

set shortmess+=c


" ----- COC Basics settings -----


" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

execute "set <M-e>=\ee"
execute "set <M-c>=\ec"
" Remap keys for applying codeAction to the current buffer.
nmap <M-c>  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <M-e>  <Plug>(coc-fix-current)


" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocActionAsync('doHover')
    endif
endfunction

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end




" ---------- Bottom status bar -----------

" status bottom-bar format
set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode


" ------ Cursor ------


set encoding=UTF-8

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey4
hi ColorColumn ctermbg=235 guibg=Grey4

set timeoutlen=100


let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1

let g:DevIconsDefaultFolderOpenSymbol=''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol=''


set sc
command W w

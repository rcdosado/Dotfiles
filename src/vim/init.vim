
"Bundle Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif



call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle "flazz/vim-colorschemes"
"NeoBundle "kien/ctrlp.vim"
NeoBundle "ctrlpvim/ctrlp.vim"

" vim main plugins
" NeoBundle "junegunn/fzf"
" NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'
NeoBundle "sjl/gundo.vim"
NeoBundle 'ryanoasis/vim-devicons'
NeoBundle "bling/vim-airline"
NeoBundle "vim-airline/vim-airline-themes"
NeoBundle "jlanzarotta/bufexplorer"
NeoBundle "scrooloose/syntastic.git"
NeoBundle "vim-scripts/tComment"
NeoBundle "tpope/vim-surround"
NeoBundle "mileszs/ack.vim"
NeoBundle "rking/ag.vim"
NeoBundle "edsono/vim-matchit"
NeoBundle "tpope/vim-fugitive"
NeoBundle "henrik/vim-indexed-search"
NeoBundle "tpope/vim-abolish"
NeoBundle "tpope/vim-repeat"
NeoBundle "jiangmiao/auto-pairs"
NeoBundle "xolox/vim-session"
NeoBundle "xolox/vim-misc"
NeoBundle "editorconfig/editorconfig-vim"
NeoBundle "godlygeek/tabular"
NeoBundle "airblade/vim-gitgutter"
NeoBundle "Lokaltog/vim-easymotion"
NeoBundle "rhysd/clever-f.vim"
NeoBundle "carlitux/deoplete-ternjs"
"NeoBundle "farseer90718/vim-taskwarrior" https://github.com/blindFS/vim-taskwarrio://github.com/blindFS/vim-taskwarrior
"NeoBundle "rstacruz/vim-closer"

" togglable panels

NeoBundle "scrooloose/nerdtree"
NeoBundle "tpope/vim-vinegar"
NeoBundle "vim-scripts/taglist.vim"
NeoBundle "majutsushi/tagbar"

" language vundles
NeoBundle "pangloss/vim-javascript"
NeoBundle "marijnh/tern_for_vim"
NeoBundle "othree/javascript-libraries-syntax.vim"

NeoBundle "fatih/vim-go"
" Bundle "klen/python-mode"

" disabled due to slowness
" NeoBundle "plasticboy/vim-markdown"

NeoBundle "vim-scripts/c.vim"

" databases
NeoBundle "vim-scripts/SQLUtilities"
NeoBundle "NagatoPain/AutoSQLUpperCase.vim"

" autocomplete
NeoBundle "Valloric/YouCompleteMe"
NeoBundle "MarcWeber/vim-addon-mw-utils"

" improved json syntax highlighting
NeoBundle 'elzr/vim-json'

" Syntax highlighting for .jsx (js files for react js)
NeoBundle 'mxw/vim-jsx'

" Add Support css3 property
NeoBundle 'hail2u/vim-css3-syntax'

" Highlights the matching HTML tag when the cursor
" is positioned on a tag.
NeoBundle 'gregsexton/MatchTag'

" Smart indent for javascript
" http://www.vim.org/scripts/script.php?script_id=3081
NeoBundle 'lukaszb/vim-web-indent'

" ES2015 code snippets (Optional)
NeoBundle 'epilande/vim-es2015-snippets'

" React code snippets
"https://github.com/epilande/vim-react-snippets
NeoBundle 'epilande/vim-react-snippets'

" snippets
NeoBundle "SirVer/ultisnips"
NeoBundle "honza/vim-snippets"

NeoBundle "Shougo/neosnippet"
NeoBundle "Shougo/neosnippet-snippets"

" Zen coding __rcd__
NeoBundle "mattn/emmet-vim"

" Doc helpers __rcd__
NeoBundle "KabbAmine/zeavim.vim" 


" enable all the plugins
" filetype plugin indent on


call neobundle#end()  

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  
"End NeoBundle Scripts-------------------------

" filetype fix
filetype plugin indent on

""""""""""""""""""""""""""""""""
"
" SETTINGS & KEYBINDINGS
"
""""""""""""""""""""""""""""""""
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set ruler
set hidden
set ignorecase
set smartcase
set showmatch
set incsearch
set hls
set relativenumber number
set ls=2
set cursorline
set nowrap
set backspace=indent,eol,start
set shell=/bin/bash
set completeopt -=preview
set textwidth=100
set wildmenu
set noshowmode
set cmdheight=1
"set magic
"set scrolloff=23


" set autoread

" backup/persistance settings
set undodir=~/.config/nvim/tmp/undo//
set backupdir=~/.config/nvim/tmp/backup//
set directory=~/.config/nvim/swap//
set backupskip=/tmp/*,/private/tmp/*"
set backup
set writebackup
set noswapfile

" persist (g)undo tree between sessions
set undofile
set history=100
set undolevels=100

" set <leader>
let mapleader=","

if $TERM =='xterm-256color'
    set t_Co=256
endif

" enable mouse
set mouse=a

" show trailing whitespaces
" __rcd__ 
map <f12> :set list!<cr>
:set list!

set list
set listchars=tab:▸\ ,trail:¬,nbsp:.,extends:❯,precedes:❮
augroup ListChars2
    au!
    autocmd filetype go set listchars+=tab:\ \
    autocmd ColorScheme * hi! link SpecialKey Normal
augroup END


" syntax highlighting
syntax on


"Auto loads for UltiSnips
autocmd FileType py UltiSnipsAddFiletypes django
"autocmd FileType php UltiSnipsAddFiletypes php-laravel
"autocmd FileType php UltiSnipsAddFiletypes laravel


"autocmd FileType js UltiSnipsAddFiletypes reactjs


let g:neosnippet#snippets_directory = '~/.vim/snips'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-j>"


" Additional UltiSnips config.
let g:UltiSnipsSnippetDir=['~/.config/nvim/bundle/vim-snippets']
let g:UltiSnipsSnippetDirectories=["UltiSnips"]


" If you want :UltiSnipsEdit to split your window.

let g:UltiSnipsEditSplit="vertical"


" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" togglables without FN keys
nnoremap <leader>1 :GundoToggle<CR>
set pastetoggle=<leader>2
nnoremap <leader>3 :TlistToggle<CR>
nnoremap <leader>4 :TagbarToggle<CR><F2>
nnoremap <leader>5 :NERDTree %:p:h<CR>

"NERDTree open current file directory
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1



"CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>



"insert semicolon at the end
nnoremap ;; m`A;<CR>
" nnoremap ,; m`A;<CR>



" Undo during insert mode __rcd__
"
inoremap <C-R> <C-G>u<C-R>

" Emmet/zen coding remap the leader key
let g:user_emmet_expandabbr_key='<C-e>'
let g:user_emmet_complete_tag=1

" let emmet be active for html and css only
" let g:user_emmet_install_global=0
" autocmd FileType html,css EmmetInstall

" __rcd__
" Remap H and L to switch tabs left or right
nnoremap H :bprev<CR>
nnoremap L :bnext<CR>


" visual reselect of just pasted
nnoremap gp `[v`]

"make enter break and do newlines
nnoremap <CR> O<Esc>j
nnoremap <leader>j i<CR><Esc>==

"make space in normal mode add space
nnoremap <Space> i<Space><Esc>l

" better scrolling
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

" consistent menu navigation
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>


" intellij style autocomplete shortcut
inoremap <C-@> <C-x><C-o>
inoremap <C-Space> <C-x><C-o>

" ctrlP config
let g:ctrlp_map = "<c-p>"
let g:lp_user_command = 'find %s -type f'        " MacOSX/Linuxrebinded
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$|vendor\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|node_modules\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

nnoremap <leader>t :CtrlPMRU<CR>
nnoremap <leader>bp :CtrlPBuffer<CR>

nmap <leader>f <Plug>(easymotion-f2)
nmap <leader>F <Plug>(easymotion-F2)

" open vimrc
nnoremap <leader>v :e  ~/.config/nvim/init.vim<CR>
nnoremap <leader>V :tabnew  ~/.config/nvim/init.vim<CR>

" open tmux.conf
nnoremap <leader>tm :e ~/.tmux.conf<CR>

" open react snippet file 
nnoremap <leader>rj :e ~/.config/nvim/bundle/vim-react-snippets/UltiSnips/javascript.snippets<CR>

" edit php snippets
nnoremap <leader>ph :e ~/.config/nvim/bundle/vim-snippets/snippets/php.snippets<CR>




" open snippets directory
nnoremap <leader>vs :NERDTree ~/.config/nvim/bundle/vim-snippets/snippets/<CR>


" reload all open buffers
nnoremap <leader>Ra :tabdo exec "windo e!"

" buffer 
:nnoremap <F5> :buffers<CR>:buffer<Space>

"map next-previous jumps
nnoremap <leader>m <C-o>
nnoremap <leader>. <C-i>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Use sane regexes
nnoremap <leader>/ /\v
vnoremap <leader>/ /\v

" Use :Subvert search
nnoremap <leader>// :S /
vnoremap <leader>// :S /

" Use regular replace
nnoremap <leader>s :%s /
vnoremap <leader>s :%s /

" Use :Subvert replace
nnoremap <leader>S :%S /
vnoremap <leader>S :%S /

" Auto-pairs settings
let g:AutoPairsFlyMode = 1

" clever-f prompt
let g:clever_f_show_prompt = 1
let g:clever_f_across_no_line = 1

" airline
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif
let g:airline_theme="powerlineish"
"let g:airline_theme="molokai"
"let g:airline_theme="wombat"

let g:airline_powerline_fonts=1
let g:airline#extensions#branch#empty_message  =  "no .git"
let g:airline#extensions#whitespace#enabled    =  0
let g:airline#extensions#syntastic#enabled     =  1
let g:airline#extensions#tabline#enabled       =  1
let g:airline#extensions#tabline#tab_nr_type   =  1 " tab number
let g:airline#extensions#tabline#fnamecollapse =  1 " /a/m/model.rb
let g:airline#extensions#hunks#non_zero_only   =  1 " git gutter
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" YouCompleteMe
let g:ycm_filetype_blacklist = {}
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_key_list_select_completion = ['<C-n>','<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>','<Up>']
let g:ycm_key_invoke_completion = "<C-j>"
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_server_log_level = 'debug'
let g:SuperTabDefaultCompletionType = '<C-n>'

if executable("ag")
  let g:ackprg = "ag --nogroup --column"
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" reload ctags
nnoremap <leader>C :!ctags -R --fields=+l --exclude=.git --exclude=log --exclude=tmp *<CR><CR>

" git and ack stuff
let g:gitgutter_enabled = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
nnoremap <leader>G mG:Git! 
nnoremap <leader>g :Git 
nnoremap <leader>A :!ag 
nnoremap <leader>a :Ag! 

""""""""""""""""""""""""""""""""
"   Tabularize
"
"http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
""""""""""""""""""""""""""""""""

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

""""""""""""""""""""""""""""""""
"
" PROGRAMMING LANGUAGES
"
""""""""""""""""""""""""""""""""
" vim-go settings
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" vim-go bindings
augroup FileType go
  au!
  au FileType go nmap gd <Plug>(go-def)
  au FileType go nmap <Leader>dd <Plug>(go-def-vertical)

  au FileType go nmap <Leader>dv <Plug>(go-doc-vertical)
  au FileType go nmap <Leader>db <Plug>(go-doc-browser)

  au FileType go nmap <Leader>i <Plug>(go-info)

  au FileType go nmap <leader>r <Plug>(go-run)
  au FileType go nmap <leader>b <Plug>(go-build)
  au FileType go nmap <leader>t <Plug>(go-test)
augroup END

" General file runners for various languages
function! LangRunner()
  if(&ft=="python")
    nnoremap <leader>r :!python %<cr> 
  elseif(&ft=="ruby")
    nnoremap <leader>r :!ruby %<cr>
  elseif(&ft=="javascript")
    nnoremap <leader>r :!node %<cr>
  elseif(&ft=="php")
    nnoremap <leader>r :!php %<cr>
  elseif(&ft=="c")
    nnoremap <leader>r :!make run<cr>
  endif
endfunction

au BufEnter * call LangRunner()

" enable angular syntax
let g:used_javascript_libs = 'jquery,angularjs'


""""""""""""""""""""""""""""""""
"
" COOL HACKS
"
""""""""""""""""""""""""""""""""
" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Visual Mode */# from Scrooloose
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>

" Text Highlighter = <leader>h[1-4]
function! HiInterestingWord(n)
    " Save our location.
    normal! mz
    " Yank the current word into the z register.
    normal! "zyiw
    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n
    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)
    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'
    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)
    " Move back to our original location.
    normal! `z
endfunction

nnoremap <leader>hh :call clearmatches()<CR>:noh<CR>
nnoremap <silent> <leader>h1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>h2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>h3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>h4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>h5 :call HiInterestingWord(5)<cr>
nnoremap <silent> <leader>h6 :call HiInterestingWord(6)<cr>

hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195

highlight search ctermfg=white ctermbg=3423513

" better retab
function Retab()
  :retab
  ":%s/\s\+$//
endfunction


""""""""""""""""""""""""""""""""
"
" Web devicons
"
""""""""""""""""""""""""""""""""
autocmd FileType nerdtree setlocal nolist
"let g:WebDevIconsEnable=1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
"let g:WebDevIcons_Conceal_nerdtree_brackets = 1
"let g:WebDevIconsUnicodeGlyphDoubleWidth=2



""""""""""""""""""""""""""""""""
"
" BUG WORKAROUNDS
"
""""""""""""""""""""""""""""""""
" realign buffers when iterm goes fullscreen
augroup FixProportionsOnResize
  au!
  au VimResized * exe "normal! \<c-w>="
augroup END

" vim mode-switch lag fix
if ! has("gui_running")
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

set clipboard=unnamedplus

" make C-a, C-x work properly
set nrformats=

" potential lag fix
let g:matchparen_insert_timeout=1

" fix bufexplorer bug with hidden
let g:bufExplorerFindActive=0



" GUI Font 
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h12
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h11
" rcd
"set guifont=DroidSansMono\ Nerd\ Font\ 11
set encoding=utf-8
let g:airline_powerline_fonts=1

"Temporary only

let g:solarized_bold = 0
let g:solarized_contrast = "low"
let g:solarized_termcolors = 256
if has('gui_running')
	set background=light
else
	set background=dark
endif

" color schemes
"colorscheme desert
"colorscheme solarized
colorscheme candyman
"colorscheme winter
"colorscheme bubblegum

"allows you to display a horizontal highlight line
set cursorline

"allows you to display columnar line
"set cursorcolumn

hi CursorLine   cterm=NONE ctermbg=237 ctermfg=NONE guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=darkred guifg=white

"2018 updates
set ttyfast

" Limit syntax highlighting (this
" avoids the very slow redrawing
" when files contain long lines).
set synmaxcol=2500

"TERN JS config 
let g:tern#command = ['node',expand('~').'/.nvm/versions/node/v9.4.0/bin/tern']

" formmating js with prettier
autocmd FileType javascript set formatprg=prettier\ --stdin
" format on save 
autocmd BufWritePre *.js :normal gggqG


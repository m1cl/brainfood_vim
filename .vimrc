"--general----------------------------------------------
set title
let &titlestring='%t - vim'
set scrolloff=499
syntax on
set termguicolors       " enable true colors support
set tags=./tags;,tags;
filetype plugin indent on
set encoding=UTF-8
"set backup
set nobackup
set undodir=~/.vim/undo//
set mouse=a
let shell="/opt/homebrew/bin//fish"
set cursorline
" set undofile
set colorcolumn=
set shortmess-=S
" let g:black_virtualenv="/home/m1cl/pyenv/python3"
" set completefunc=emoji#complete
"set wildmode=full
set wildmenu 
set splitright 
set number
set noswapfile
" set sessionoptions=buffers
set splitbelow
let &t_ut=''
" set sessionoptions+=globals
set grepprg=grep\ -nH\ $*
set backspace=indent,eol,start
set showtabline=1
let maplocalleader = ","
set hlsearch
set incsearch
set nowb
" set completefunc=FuzzyCompleteFunc
" set completeopt=menu
"set thesaurus=/home/m1cl/.vim/words.txt
set dictionary+=/home/m1cl/.vim/words.txt
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
" set foldmethod=syntax
" set foldnestmax=10
" set foldenable
set foldlevel=1
let g:coc_node_path = '/Users/majala/Library/Caches/fnm_multishells/27341_1654765360211/bin/node'

"statusline activated
" set laststatus=2
" set statusline=%<%f%m\ %{getcwd()}\ %=\ Line:%l\/%L\ Column:%c%V
" set nocompatible
" set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" set statusline=\ %t\ %=\col:%c\ %=\%l/%L\ \[%M%R%H%W%Y]
" set statusline+=%{ChangeStatusLineColor()}
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

"Autocomplete navigation "
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:clap_provider_alias = {'hist:': 'command_history'}
autocmd FileType fortran setlocal makeprg=fpm\ build
let g:vimtex_view_general_viewer = 'mupdf'
let g:vimtex_view_general_options ='-forward-search @tex @line @pdf'
" for vsc easymotion
function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction
"-----------------------------------------------end---

call plug#begin('~/.vim/plugged')
"--plugs----------------------------------------------
" Plug 'akinsho/bufferline.nvim'
" Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'feline-nvim/feline.nvim'
" Plug 'flazz/vim-colorschemes'
" Plug 'govim/govim'
" Plug 'luukvbaal/stabilize.nvim'
" Plug 'mattn/webapi-vim'
" Plug 'nvim-lualine/lualine.nvim'
" Plug 'wwcd/nvim-ack'
" Plug 'romgrk/barbar.nvim'
Plug  'arzg/vim-colors-xcode'
Plug 'ahmedkhalf/project.nvim'
Plug 'airblade/vim-rooter'
Plug 'ajgrf/parchment'
Plug 'akinsho/flutter-tools.nvim'
Plug 'antoinemadec/coc-fzf'
Plug 'andrewradev/tagalong.vim'
Plug 'axvr/photon.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'camspiers/animate.vim'
Plug 'coreyja/fzf.devicon.vim'
Plug 'f-person/auto-dark-mode.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'fatih/vim-go'
Plug 'goolord/alpha-nvim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'jacoborus/tender.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/vim-github-dashboard'
Plug 'kdheepak/lazygit.nvim'
Plug 'kshenoy/vim-signature'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'lewis6991/gitsigns.nvim'
Plug 'liuchengxu/vim-clap'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'liuchengxu/vista.vim'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'mlaursen/vim-react-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'othree/html5.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'rafalbromirski/vim-aurora'
Plug 'rakr/vim-one'
Plug 'rcarriga/nvim-notify'
Plug 'relastle/bluewery.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'sindrets/diffview.nvim'
Plug 'sirver/ultisnips'
Plug 'spf13/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
Plug 'yggdroot/indentline'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
if has("nvim")
  " Plug 'Pocco81/DAPInstall.nvim'
  " Plug 'Pocco81/dap-buddy.nvim'
  " Plug 'TimUntersberger/neogit'
  " Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
  " Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
  " Plug 'ldelossa/gh.nvim'
  " Plug 'ldelossa/litee.nvim'
  " Plug 'mfussenegger/nvim-dap'
  " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  " Plug 'nvim-orgmode/orgmode'
  Plug 'antoinemadec/FixCursorHold.nvim'
  Plug 'hoschi/yode-nvim'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-telescope/telescope-live-grep-args.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'arafatamim/trouble.nvim'
endif
"-----------------------------------------------END---
call plug#end()

"     /\__\         /\  \         |\__\         /\  \    
"    /:/  /        /::\  \        |:|  |       /::\  \   
"   /:/__/        /:/\:\  \       |:|  |      /:/\ \  \  
"  /::\__\____   /::\~\:\  \      |:|__|__   _\:\~\ \  \ 
" /:/\:::::\__\ /:/\:\ \:\__\     /::::\__\ /\ \:\ \ \__\
" \/_|:|~~|~    \:\~\:\ \/__/    /:/~~/~    \:\ \:\ \/__/
"    |:|  |      \:\ \:\__\     /:/  /       \:\ \:\__\  
"    |:|  |       \:\ \/__/     \/__/         \:\/:/  /  
"    |:|  |        \:\__\                      \::/  /   
"     \|__|         \/__/                       \/__/    
"  
let g:fzf_action = {
      \ 'Ctrl-e': 'tab split',
      \ 'ctrl-j': 'split',
      \ 'ctrl-l': 'vsplit' }

nno -- :NvimTreeFindFile<CR>
nno ,, :LazyGit<CR>
nnoremap R :CocCommand tsserver.findAllFileReferences<CR>
" nnoremap n nzz
noreabbrev neo Neogit
" nnoremap N nzz
nnoremap ¡ :LazyGit<CR>
let g:animate#distribute_space = 0
let g:user_emmet_expandabbr_key = '<D-f>'
let g:user_emmet_expandabbr_key = '<C-f>'
" let g:user_emmet_leader_key='<C-f>'
let g:github_dashboard = { 'username': 'you', 'password': $GITHUB_TOKEN }
let g:fzf_layout = {
      \ 'window': 'new | wincmd J | resize 1 | call animate#window_percent_height(0.5)'
      \ }
noreabbrev gstats :FzfPreviewGitStatusRpc<CR>
noreabbrev glog :FzfPreviewGitLogsRpc<CR>
" noreabbrev T :Telescope<CR>
noreabbrev tf :Telescope find_files<CR>
nnoremap <C-f> :Telescope live_grep<CR>
noreabbrev tb :Telescope buffers<CR>
" BUFFERS
" noremap <leader>bd :%bd\|e#\|bd#<cr>\|'" close all buffers and keep and save current
cnoreabbrev <silent> bo :w <bar> %bd <bar> e# <bar> bd# <CR><CR>
nnoremap d> f><esc>v$hdA/><esc>
nnoremap yp :call CopyLineAndReplaceWordUnderCursor() <CR>
nnoremap <C-n> <cmd>CHADopen<cr>
nnoremap v" vf"h
nnoremap gj ]` 
nnoremap gk [`
nnoremap <F12> :call InstallPlugins()<CR>
nnoremap doc :CocCommand rust-analyzer.openDocs<CR>
nnoremap _ :Clap<CR>
" TODO
" inoremap <C-i> (<esc>ea)<esc>
nnoremap vs :vs<CR>
inoremap <C-e> <esc>$a
nnoremap { f{ci{<CR><esc>O
nnoremap } f{ci{
nnoremap ( F(ci(
nnoremap ) f(ci(
vnoremap e $
nnoremap ge $
nnoremap gw F(a
nnoremap M ]`
nnoremap µ [`
nmap <silent> gt :TroubleToggle<CR>
vnoremap ge $
nnoremap ħ :History <CR>
nnoremap ¶ :call Run() <CR>
nnoremap ſ :wa! <CR>
nnoremap æ :Ack 
" jump to the previous function
nnoremap <silent> {{ :call
      \ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "bw")<CR>
" jump to the next function
nnoremap <silent> }} :call
      \ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "w")<CR>

" alt + b
" nnoremap “ :Clap buffers<CR>
" nnoremap <C-f> :Clap! files<CR>
" nnoremap <C-b> :Clap buffers<CR>
nnoremap ä @:
nnoremap vn v$h

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap ack :call AckWordUnderCursor()<CR>
nnoremap E $
vmap <C-x> "+c
"vmap <C-p> c<ESC>"+p
"imap <C-p> <ESC>"+pa
tmap <ESC><ESC> <C-bslash><C-N><ESC><ESC>
tnoremap <Esc> <C-W>N
tnoremap <M-BS>   <C-\><C-n><C-W>
" nnoremap <F5> :call InstallPlugin()<CR>
nnoremap ga :CocCommand<CR>
tmap <F4> <C-bslash><C-N><C-w><C-r>

nnoremap Mru :FzfPreviewProjectMruFilesRpc<CR>

xnoremap <leader>r :<C-u>'{,'}s/<C-r>=GetVisualSelection()<CR>/
"tmap <C-h> <C-bslash><C-N><C-w><C-h>
nnoremap <F1> :call Run()<CR>
nnoremap <F11> :tabe ~/.vmrc <CR> :w! <CR> :source ~/.vimrc <CR> :PlugClean! <CR> :PlugInstall <CR>
nnoremap <F4> :call OpenConfigFile() <CR>
nnoremap <silent><F6> :call ChangeColorScheme("bluewery-light", "bluewery")<CR>"
nnoremap <F8> :w! <CR> :make<CR>
nnoremap term :FloatermToggle <CR>
nnoremap <C-b> :GitFiles<CR>
nnoremap gm :FzfPreviewMruFilesRpc<CR>
" nnoremap <C-b> <cmd>Telescope find_files<cr>
" silent! nmap <C-b> :GFiles<CR>
" nnoremap <BS><BS> :q!<CR>"
nnoremap <esc><esc> :q!<CR>"
nnoremap <ESC>q :tabo<CR>"
nnoremap <ENTER> :w!<CR>"
nnoremap <SPACE><ENTER> :w! <CR> :source %<CR>

noremap <C-e> $

inoremap <c-l> <right>
inoremap <c-d> <right><backspace>
nno ö :NvimTreeToggle<CR>
nnoremap _ :GFiles<CR>

nnoremap <SPACE> /
nnoremap <SPACE><SPACE> :noh<CR>"                                                     "Remove search highlight                <SPACE><SPACE>

" bufferline 
" nnoremap <silent>L :BufferLineCycleNext<CR>
" nnoremap <silent>H :BufferLineCyclePrev<CR>
nnoremap H gT
nnoremap L gt
" nnoremap <silent> H :BufferPrevious<CR>
" nnoremap <silent> L :BufferNext<CR>
nnoremap vv bve
nnoremap <B> setlocal shortmess+=c
" window movement with kitty TODO: check if kitty is running
" nnoremap <C-j> <UP>
" nnoremap <C-h> <LEFT>
" nnoremap <C-l> <RIGHT>
" nnoremap <C-j> <DOWN>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>
nnoremap M ]`
" nnoremap b k[`
inoremap <C-a> <ESC> :normal $ <CR>a
inoremap {<ENTER> {<ENTER>}<ESC>O
inoremap <C-v> <ESC>"+pa
"vnoremap <C-c> "+y
vnoremap <C-d> "+d
nnoremap QQ :qa! <CR>
nnoremap quit :qa! <CR>
nnoremap tag :Vista!! <CR>
" nnoremap termc :call OpenNewKittyWindow("cat") <CR>
" nnoremap term :call OpenNewKittyWindow("fish") <CR>
nnoremap <C-y> <C-z>
nnoremap repl :call OpenRepl()<Cr>
nnoremap rep :call FindAndReplace()<CR>
" nnoremap grep :call GrepAndQuickFix()<CR>
nnoremap cl :ccl<CR>
nnoremap test :!yarn test<CR>
nnoremap gn :bnext <CR>
nnoremap gp :bprevious <CR>
nnoremap aa zR
nnoremap zz 9zm
nnoremap st :Startify<CR>
"nnoremap <C-c> 20<C-w><
" nnoremap <C-e> 20<C-w>>
" nnoremap € 20<C-w><
nnoremap <C-y> :res -3<CR>
nnoremap <C-x> :res +3<CR>
"nnoremap <Space><TAB> :call Autojump()<CR>
" nnoremap <Space><TAB> :CocAction<CR>
nnoremap <CTRL-,> call OpenConfigFile()<CR>
nnoremap "" ci"
nnoremap - m,
" cnoreabbrev ! AsyncRun
cnoreabbrev rt :call ReplaceIdForTeeth("
nnoremap vaa vaBV
cnoreabbrev W w 
" cnoreabbrev PluginInstall call InstallPlugin()
cnoreabbrev mru FZFMru 
cnoreabbrev konf  tabe ~/.config/kitty/kitty.conf
cnoreabbrev vomf tabe ~/.config/fish/conf.d/omf.fish
cnoreabbrev vmrc tabe ~/.vimrc
cnoreabbrev nvmrc tabe ~/.config/nvim/init.vim
cnoreabbrev def colorscheme default
cnoreabbrev Q q! 
"cnoreabbrev light set background=light
"cnoreabbrev dark set background=dark
cnoreabbrev mi colorscheme miVim
cnoreabbrev T tabe
cnoreabbrev ccr CocRestart
cnoreabbrev mp CocList marketplace
"nnoremap <backspace> :call LessMode()<CR>
"
nnoremap tabo :tabo<CR>
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
" noremap tabo :BufferCloseAllButCurrent<CR>

nnoremap B :FzfPreviewBuffersRpc<CR>
" nnoremap <C-o> :call OpenFileInCurrentDir()<CR>
nnoremap <C-o> :Telescope find_files<CR>
"inoremap <tab> <c-r>=Smart_TabComplete()<CR>
"command! Qbuffers call setqflist(map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), '{"bufnr":v:val}'))
"Coc settings
" nnoremap <C-f> :Telescope current_buffer_fuzzy_find<CR>
" use normal command like `<leader>xi(`
"
" COC keybindings
"
" Remap for do codeAction of selected region
" Double click left
nmap <C-a>  <Plug>(coc-cursors-operator)
nmap <silent> , <Plug>(coc-diagnostic-prev)
nmap <silent> <TAB> <Plug>(coc-diagnostic-next-error)
nmap <silent> ge <Plug>(coc-range-select)
nnoremap , <silent> <Plug>(coc-diagnostic-next-warning) 
" xmap <silent> <TAB> <Plug>(coc-range-select)
inoremap <silent><expr> <C-x><C-o> coc#refresh()
nmap <C-d> <Plug>(coc-codeaction)
vmap <C-d> <Plug>(coc-codeaction)
nmap <silent> <2-LeftMouse> <Plug>(coc-definition)
nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-c> <Plug>(coc-cursors-word)
nmap <silent> <S-TAB> <Plug>(coc-diagnostic-prev-error)
nmap <silent> <TAB> <Plug>(coc-diagnostic-next)
nmap <silent> cm <Plug>(coc-implementation)
nmap <silent> cref <Plug>(coc-refactor)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gs <Plug>(coc-type-definition)
nmap <silent> ren <Plug>(coc-rename)
nnoremap <silent> gl <Plug>(coc-codelens-action)
xmap <silent> <C-c> <Plug>(coc-cursors-range)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

nnoremap !! :.w !bash<CR>
"-----------------------------------------------END---

"--gui------------------------------------------------
if has("gvim") 
  hi Normal guifg=lightgrey guibg=black

  set guioptions-=L
  set guioptions-=m  "menu bar
  set guioptions-=T  "toolbar
  set guioptions-=r  "scrollbar
  " set guifont=Blex\ Mono\ Nerd\ Font\  18
  " set guifont=Dank\ Mono\ 18
  set  visualbell t_vb=
  set noerrorbells                                                  "turn off the sound
endif
if has('gui_running')
  hi Normal guifg=lightgrey guibg=black

  set guioptions-=L
  set guioptions-=m  "menu bar
  set guioptions-=T  "toolbar
  set guioptions-=r  "scrollbar
  " set guifont=Menlo:h18
  " set guifont=Dank\ Mono\ 18
  set  visualbell t_vb=
  set noerrorbells                                                  "turn off the sound
endif

" INSTALL plug if it doesn t exist yet
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
"-----------------------------------------------END---

"--3rd party -----------------------------------------

let g:fzf_preview_window = ['right:60%', 'ctrl-/']
" let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']


" Resume latest coc list
set updatetime=300
set cmdheight=2

" nno <silent> gt :call GotoTab()<cr>
nno <silent> gv :call GotoSplit()<cr>

" git/fzf 
nno gl :FzfPreviewGitCurrentLogsRpc<CR>
nno Ma :FzfPreviewMarksRpc<CR>
nno Mo :FzfPreviewProjectOldFilesRpc<CR>
nno Mb :FzfPreviewGitBranchesRpc<CR>
nno Mc :FzfPreviewChangesRpc<CR>


function! OpenFileInCurrentDir()
  execute "FZF " .expand("%:p:h")
endfunc

function! ConsoleLogWordUnderCursor()
  let cword = expand('<cword>')
  execute("normal oconsole.log(\" " . expand(cword) . "\", " . expand(cword))
endfunc
" nnoremap <C-c> :call ConsoleLogWordUnderCursor()<CR>

" move a line upwards or downwards
function! s:swap_lines(n1, n2)
  let line1 = getline(a:n1)
  let line2 = getline(a:n2)
  call setline(a:n1, line2)
  call setline(a:n2, line1)
endfunction

function! Swap_up()
  let n = line('.')
  if n == 1
    return
  endif
  call s:swap_lines(n, n - 1)
  exec n - 1
endfunction

nnoremap <C-p> :call Swap_up()<CR>
function! Swap_down()
  let n = line('.')
  if n == line('$')
    return
  endif

  call s:swap_lines(n, n + 1)
  exec n + 1
endfunction
nnoremap <C-n> :call Swap_down()<CR>

function! GrepAndQuickFix()
  let regex = input('REGex:')
  vimgrep /\vl:vregex/ | copen
endfunction

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

let g:vista_default_executive = 'coc'

set hidden
if has('nvim') && executable('nvr')
  nnoremap com :Telescope commands<CR>
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

"-----------------------------------------------END---

"
"                                                         
"                      _|                      
"            _|_|_|    _|    _|_|_|  _|_|_|    
"            _|    _|  _|  _|    _|  _|    _|  
"            _|    _|  _|  _|    _|  _|    _|  
"            _|_|_|    _|    _|_|_|  _|    _|  
"            _|                                
"            _|                                
"--plan -------------------------------------------

" Coc actions
function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#util#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


fun! CopyLineAndReplaceWordUnderCursor()
  let l:replace = expand("<cword>")
  let l:word = input("Change to: ")
  normal yyp
  execute("s/" . l:replace . "/" . word . "/g")
endfunc

fun! OpenConfigFile()
  let bufnr = bufwinnr(".vimrc")
  if bufnr > 0
    bd ".vimrc"
  else
    tabe /home/m1cl/.vimrc
  endif
endfun

fun! RenameFileDirectory(newDirectoryName)
  let currentFilePath = expand('%:p')
endfun

" use this if you are working with component based structure
" it will change the name of the component and its directory
" then it will look for occurences inside your project. it 
" will ignore common directories
function! ExtractFileExtention()
  let currentFileName = expand('%:t')
  let fileNameExtList = split(currentFileName, '\.')
  let oldFileName = fileNameExtList[0]
  let fileExtention = fileNameExtList[1]
  return fileNameExtList
endfunction

function! GetCurrentFileName()
  return expand("%:t")
endfunction

function! ExtractFileName()
  let currentFileName = expand('%:t')
  let fileNameExtList = split(currentFileName, '\.')
  let oldFileName = fileNameExtList[0]
  return oldFileName
endfunction

fun! RenameComponent()
  let currentFileName = expand('%:t')
  let newFileName = input('new file name: ')
  if newFileName != ''
    let directoryName = expand('%:p:h:t')
    let fileNameExtList = split(currentFileName, '\.')
    let oldFileName = fileNameExtList[0]
    let fileExtention = fileNameExtList[1]
    let currentPath = getcwd()
    let initialPath = getcwd()
    let path = expand('%:h')
    echom escape(path, '')
    silent execute 'cd ' . path
    silent execute 'saveas ' . newFileName . '.' . fileExtention
    silent execute '!mv ' . currentFileName . ' /tmp/' 
    silent execute '%s/\<' . oldFileName . '\>/' . newFileName . '/g'
    silent execute 'cd ' . initialPath
    silent args "**/*." . fileExtention
    silent execute 'cdo Ack ' . oldFileName
  endif 
endfun

function! CreateCenteredFloatingWindow() abort
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    let l:textbuf = nvim_create_buf(v:false, v:true)
    call nvim_open_win(l:textbuf, v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
    return l:textbuf
endfunction

function! FloatingWindowHelp(query) abort
    let l:buf = CreateCenteredFloatingWindow()
    call nvim_set_current_buf(l:buf)
    setlocal filetype=help
    setlocal buftype=help
    execute 'help ' . a:query
endfunction

command! -complete=help -nargs=? Help call FloatingWindowHelp(<q-args>)

" Useful for projects with modules
" TODO: add random token genrator when moving file to /tmp
fun! RenameFileAndDirectory()
  let currentFileName = expand('%:t')
  let newFileName = input('new file name: ')
  if newFileName != ''
    let fileNameExtList = split(currentFileName, '\.')
    let oldFileName = fileNameExtList[0]
    let fileExtention = fileNameExtList[1]
    let directoryName = expand('%:p:h:t')
    let currentPath = getcwd()
    let path = expand('%:h')
    echom escape(path, '')
    silent execute 'cd ' . path
    silent execute 'cd ..'
    silent execute '!mv ' . directoryName . ' ' . newFileName
    silent execute 'cd ' . newFileName
    silent execute 'saveas ' . newFileName . '.' . fileExtention
    silent execute '!mv ' . currentFileName . ' /tmp/' 
    silent execute 'cd ' . currentPath
    silent execute '%s/\<' . oldFileName . '\>/' . newFileName . '/g'
    silent args "**/*." . fileExtention
    silent execute 'cdo Ack ' . oldFileName
  endif
endfun

function! GotoTab()
  normal! mt
  tabe %
  normal `t
  normal g1
endfunction

function! GotoSplit()
  normal! mt
  vertical split %
  normal `t
  normal g1
endfunction

function! AckWordUnderCursor()
  execute("Ack! " . expand('<cword>'))
endfunction
if has('gui_running')
  "		colorscheme miVim
  map <silent> <F11>
        \    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
endif
"autocmd BufwritePre *.py Black
" ## end of OPAM user-setup addition for vim / base ## keep this line

"emojis"
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('alien')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('loudspeaker')
let g:syntastic_error_symbol = emoji#for('bomb')

" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"       \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"       \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <C-n>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><C-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" autocmd CursorHold * silent call CocActionAsync('highlight')

function! s:gitModified()
  let files = systemlist('git ls-files -m 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
  let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction


let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [ [ 'project', ],
      \             [ 'mode', 'cocstatus', 'project', 'gitbranch', 'readonly', 'modified' ] ],
      \   'right': [ [ ],
      \             ['filename' ] ],
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'gitbranch': 'FugitiveHead',
      \   'project' : 'getcwd'
      \ },
      \ }


let g:startify_change_to_dir       = 0
let g:startify_session_persistence = 0
let g:startify_bookmarks = [ {'f': '~/frontend'}, {'b': '~/backend'} ]
let g:startify_lists = [
      \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

" let g:ackprg="ack-grep -H --nocolor --nogroup --column"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" autocmd User        StartifyReady silent execute 'SLoad '  . GetUniqueSessionName()
" autocmd VimLeavePre *             silent execute 'SSave! ' . GetUniqueSessionName()

" Replace camelcase with _ or -
"s/[a-z]\@<=[A-Z]/-\l\0/g
"s/[a-z]\@<=[A-Z]/THIS PART CAN BE CHANGED TO WHATEVER YOU WANT\l\0/g

let g:fzf_files_options = '--preview "bat --color always --style numbers {2..} | head -'.&lines.'"'
set laststatus=2
set background=dark

let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available

command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
      \   fzf#vim#with_preview(), <bang>0)

let shell="/bin/bash"
" let g:lightline = { 'colorscheme': 'tender' }
colorscheme lunaperche

" This file list all the plugins installed
"
autocmd!

if !1 | finish | endif " stop loading config if it's on tiny or small

" This will read plugin configuration
runtime ./plug.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('nvim')
	set inccommand=split	" showing in split windows the first lines that match the pattern with subst
	" Right Click Context Menu (Copy-Cut-Paste)
	nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
	inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
	vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim config :
filetype plugin indent on
set nocompatible

" " Numbers
set nu
autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set norelativenumber

" " Cursor matters
set scrolloff=10
set cursorline
set nosc noru nosm

" " Tabulation and indent
set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab
" set list lcs=tab:\|\ " show tabulations, but sometime kind of ugly

" " Status bar and cmd line
set cmdheight=1
set laststatus=2

" Finding files - Search down into subfolders
set path+=** 
set wildignore+=*/node_modules/*

set mouse=a " Enamble mouse
set ignorecase " Ignore case when searching
set nobackup " End with .swp files !
set lazyredraw " Don't redraw while executing macros (good performance config)


" colorscheme
" true color
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if exists("&termguicolors")
	syntax enable
	set t_Co=256
	set termguicolors
	if (empty($TMUX))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	colorscheme nord
	" tokyonight
	" gruvbox
	" dracula
	" palenight
	" OceanicNext
	if exists('g:tokyonight_style')
		let g:tokyonight_style = 'night' " available: night, storm
	endif
	set background=dark
	if exists("&winblend")
		set winblend=0
		set wildoptions=pum
		set pumblend=5
	endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fuzzfizer or fzf config
nnoremap <C-p> :GFiles<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Automatically load other vim scripts files
set exrc


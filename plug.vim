
call plug#begin("~/.config/nvim/plugged")
  " Plugin Section
  
  """"""""""""""""""""""""""""""""""""""
  " Themes :
  Plug 'morhetz/gruvbox'
  " Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'arcticicestudio/nord-vim'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'drewtempelmeyer/palenight.vim'
  " Plug 'mhartington/oceanic-next'
  """"""""""""""""""""""""""""""""""""""

  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf.vim'
  Plug 'mhinz/vim-startify'
  Plug 'ryanoasis/vim-devicons'

  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

  if has("nvim")
	  Plug 'neovim/nvim-lspconfig'
	  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	  Plug 'preservim/nerdtree'
	  Plug 'preservim/nerdcommenter'
	  Plug 'Xuyuanp/nerdtree-git-plugin'
	  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	  Plug 'folke/which-key.nvim'

	  Plug 'folke/lsp-colors.nvim'
	  Plug 'onsails/lspkind-nvim'
	  Plug 'hrsh7th/cmp-nvim-lsp'
	  Plug 'hrsh7th/cmp-buffer'
	  Plug 'hrsh7th/cmp-cmdline'
	  Plug 'hrsh7th/nvim-cmp'
  endif

call plug#end()

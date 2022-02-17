if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

 " " Tree-Sitter 
 " highlighting for neovim
 "
 " " Commands :
 " To install languages : 
 "   :TSInstall [language]
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  ensure_installed = {
	  "c",
	  "cpp",
	  "bash",
	  "regex",
	  "json",
	  "lua",
	  "python",
	  "html",
	  "rust",
	  "javascript",
  },
}
EOF

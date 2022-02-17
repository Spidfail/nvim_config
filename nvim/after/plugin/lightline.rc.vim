if !exists('g:lightline')
  finish
endif

let g:lightline = {
  \     'colorscheme': 'one',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

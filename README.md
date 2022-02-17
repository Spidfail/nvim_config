# nvim_config

Git to store and share my Neovim config. Stay simple with a basic configuration of 'lsp-config' plugin.

### Lsp-config

#### Diagnostics :
| Shortcut			|		Description 							|
|-------------------|-----------------------------------------------|
| [space] - e		|		show Diagnostics						|
| [space] - q		|		add the diagnostics to location list	|
| ]d | [d			|		go to next/previous diagnostic			|

#### Common LSP features :
| Shortcut			|		Description 							|
|-------------------|-----------------------------------------------|
| g - d				|		go to definition						|
| g - D				|		go to declaration						|
| g - i				|		go to implementation					|
| K    				|		open the Hover (brief view of object)	|
| [Ctrl] - K		|		display the signature information		|
| g - r				|		add reference in quickfix window		|
| [space] - f 		|		format									|

#### Workspace 	:
| Shortcut			|		Description 							|
|-------------------|-----------------------------------------------|
| [space] - wa		|		add workspace							|
| [space] - wr		|		remove workspace						|
| [space] - wl		|		list workspace							|
| [space] - D		|		get type definition						|
| [space] - rn		|		rename file								|

### Auto-completion

| Shortcut			|		Description 							|
|-------------------|-----------------------------------------------|
| [Enter]			|		confirm mapping and replace				|
| [Ctrl] - [space]	|		complete mapping						|
| [Ctrl] - e		|		close mapping							|
| [Ctrl] - f/d		|		scoll up and scroll down results		|

### Git Wrapper (or `Fugitive` plugin)

Simply type `:Git` then the git option you wish. It will open a little buffer for this.

Examples :
- ` :Git status `
- ` :Git log `
- ` :Git add `
- etc.
It supports tab completion.

### NERDTree

| Shortcut			|		Description 											|
|-------------------|---------------------------------------------------------------|
| [Ctrl] - n		|		open NERDTree (launch)									|
| [Ctrl] - b		|		open/close NERDTree ('Toggle' key)						|
| [Ctrl] - f		|		find and reveal the file for the active buffer			|
| [Leader] - n		|		put the cursor on opened NERDTree window (or open one)	|

### Commwnt management (or 'NERDCommenter')

#### Most important :
| Shortcut			|		Description 											|
|-------------------|---------------------------------------------------------------|
| ++				|		comment/uncomment current or selected lines/block		|

#### The rest provided by the plugin :

| Shortcut					|		Description 																		|
|---------------------------|-------------------------------------------------------------------------------------------|
| [leader] - cc 			|	Comment out the current line or text selected in visual mode.							|
| [leader] - cn  			|	Same as cc but forces nesting.															|
| [leader] - c - [space]	|	Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.	|
| [leader] - cm				|	Comments the given lines using only one set of multipart delimiters.					|
| [leader] - ci				|	Toggles the comment state of the selected line(s) individually.							|
| [leader] - cs				|	Comments out the selected lines with a pretty block formatted layout.					|
| [leader] - cy				|	Same as cc except that the commented line(s) are yanked first.							|
| [leader] - c$				|	Comments the current line from the cursor to the end of line.							|
| [leader] - cA				|	Adds comment delimiters to the end of line and goes into insert mode between them.		|
| [leader] - ca				|	Switches to the alternative set of delimiters.											|
| [leader] - cb/cl			|	Commment as usual except that the delimiters are aligned down the left side ([leader]cl) or both sides ([leader]cb).		|
| [leader] - cu				|	Uncomments the selected line(s).														|



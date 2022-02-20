# nvim_config

A repository to store and share my Neovim config. Stay simple with a basic configuration of 'lsp-config' plugin. It is made and maintain on my free time and for my personnal/professionnal use.

Feel free to make some **pull requests** if you want to upgrade this configuration. If you see any bug with this configuration, please put an Issue on this.

## To install this configuration

Before going any further :
*If **Neovim** is not installed, check this step bellow before going any further.*
*If you already **have a configuration**, save it in any way you want. This installation will eease it.*

Git clone the repository in the `Home/.config` dir. and rename it `nvim` :
```git clone git@github.com:Spidfail/nvim_config.git ~/.config/nvim```

Then install the plugins from your terminal
```nvim --headless +PlugUpgrade +PlugInstall +PlugUpdate +qa```   
... *or run the following command in Neovim instance (some ugly bugs may appear at start)*   
```
:PlugUpgrade
:PlugInstall
:PlugUpdate
```

*Your Neovim is ready !*

## Install Neovim and Maintain this configuration

If you want to simply **migrate** from *Vim to Neovim*, check this [link](https://neovim.io/doc/user/nvim.html#nvim-from-vim). If you want to **know more** about the project and *why it exists*, check the [official wiki](https://github.com/neovim/neovim/wiki/Introduction).

To **install Neovim**, check the [official documentation](https://github.com/neovim/neovim/wiki/Installing-Neovim). This configuration is working eather on *stable version* or *developement version*.
To **update Neovim**, use the package manager you used to install it. However I recommend you to check the _**latest release**_ to avoid any troubles.
> If you are using a Mac(book), I recommend you to install it with [Homebrew](https://brew.sh) with [these instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim#homebrew-on-macos-or-linux).   

**Warning :** Please remember that Neovim is **very new** which means it can be subject to major transformations. Sometime, if you update your Neovim,
some bugs can appear. To avoid it, here some advice :
- Check if this repository has new commits and update it.
- Update your Neovim on regular basis.
- If you update your Neovim, don't forget to **update your plugins** (check bellow).
- If you update your Plugins, don't forget to **update your Neovim**.


## Manage Plugins

The plugins are an important part of what make Vim and Neovim **extensible and customisable**. This configuration implemented the plugins I'm currently using and only those. Once you have install it, I recommend checking all the available plugins (and there is a lot) for Vim and Neovim (the latest is compatible with both). The installation process is pretty easy, the hard part is to learn and remember what they can offer as there shortcuts too.   
Remember that more there are, more they can cause **lag** or **delay** on variable operations. Each plugin have his `:help` page, use it anytime you feeling the need.

Here a usefull list to discover more plugins :
- [Vim Awesomme](https://vimawesome.com/) : a list of Vim plugins, compatible with both.
- [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim) : like *Vim Awesome*, a very long list of only Neovim compatible plugins.
- [Neovim Craft](https://neovimcraft.com/) : an interactive web search for Neovim plugins.

To **install a plugin**, you have to modify the `./plug.vim` config file. Put his name between those already listed like in the following example, then run `:PlugInstall` in a Neovim session.   
To **uninstall a plugin**, delete the `Plug` line in the `./plug.vim` file, then run `:PlugClean` in a Neovim session.

Plug line example :
```
call plug#begin()
Plug 'junegunn/vim-easy-align'
call plug#end()
```
> This is the shortand notation. Check this [link]() to see more notations. ***Don't put it in the init.vim***


#### Plug commands
| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install listed plugins                                             |
| `PlugUpdate [name ...] [#threads]`  | Install or update listed plugins                                   |
| `PlugClean[!]`                      | Remove unlisted plugins (bang version will clean without prompt)   |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  | 

> From [vim-plug](https://github.com/junegunn/vim-plug#commands)


## Shortcuts
### LSP basic commands (or `lsp-config` plugin)

| Shortcut			|		Description 							|
|-------------------|-----------------------------------------------|
| g - d				|		go to definition						|
| g - D				|		go to declaration						|
| g - i				|		go to implementation					|
| K    				|		open the Hover (brief view of object)	|
| [Ctrl] - K		|		display the signature information		|
| g - r				|		add reference in quickfix window		|
| [space] - f 		|		format									|

##### Workspace 	:
| Shortcut			|		Description 							|
|-------------------|-----------------------------------------------|
| [space] - wa		|		add workspace							|
| [space] - wr		|		remove workspace						|
| [space] - wl		|		list workspace							|
| [space] - D		|		get type definition						|
| [space] - rn		|		rename file								|

##### Diagnostics :
| Shortcut			|		Description 							|
|-------------------|-----------------------------------------------|
| [space] - e		|		show Diagnostics						|
| [space] - q		|		add the diagnostics to location list	|
| ]d (or) [d 		|		go to next/previous diagnostic			|


### Auto-completion (or `nvim-cmp` plugin)

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

### Tree manager (or `NERDTree` plugin)

| Shortcut			|		Description 											|
|-------------------|---------------------------------------------------------------|
| [Ctrl] - n		|		open NERDTree (launch)									|
| [Ctrl] - b		|		open/close NERDTree ('Toggle' key)						|
| [Ctrl] - f		|		find and reveal the file for the active buffer			|
| [Leader] - n		|		put the cursor on opened NERDTree window (or open one)	|


### Comment management (or `NERDCommenter`)

##### Most important :
| Shortcut			|		Description 											|
|-------------------|---------------------------------------------------------------|
| ++				|		comment/uncomment current or selected lines/block		|

##### The rest provided by the plugin :
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



## 个人 Vim 配置文件
- for vim, mv init.vim to `~/.vimrc`
- for neovim, mv init.vim to `~/.config/nvim/init.vim`

## 插件安装
安装[vim-plug](https://github.com/junegunn/vim-plug)插件
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
在配置文件中加入
```bash
call plug#begin()
Plug '...'
call plug#end()
```
在命令模式下执行
```vim
:PlugInstall
```

## 插件列表
文件树：
- [Nerd Tree](https://vimawesome.com/plugin/nerdtree-red)
- [Nerd Tree git](https://vimawesome.com/plugin/nerdtree-git-plugin)
- [Nerd Tree Commenter](https://vimawesome.com/plugin/the-nerd-commenter)

状态栏：
- [Airline](https://vimawesome.com/plugin/vim-airline-superman)
- [Airline Themes](https://vimawesome.com/plugin/vim-airline-themes)

Color Themes:
- [ColorSchemes](https://vimawesome.com/plugin/vim-colorschemes-sweeter-than-fiction)
- [Onedark](https://vimawesome.com/plugin/onedark-vim)

Icons:
- [devicons](https://vimawesome.com/plugin/vim-devicons)

Markdown:
- [markdown preview](https://vimawesome.com/plugin/markdown-preview-nvim)
- [table format](https://vimawesome.com/plugin/table-mode)

模糊搜索：
- [fzf](https://vimawesome.com/plugin/fzf)

Language:
- [ale](https://vimawesome.com/plugin/ale)
- [coc-nvim](https://vimawesome.com/plugin/coc-nvim)

Docker:
- [Dockerfile](https://vimawesome.com/plugin/dockerfile-vim)
- [Docker](https://vimawesome.com/plugin/docker)

代码补全、跳转:
- [coc.nvim](https://github.com/neoclide/coc.nvim)

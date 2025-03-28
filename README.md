# lf-vim

Vim syntax highlighting for the [lf](https://github.com/gokcehan/lf) configuration file (`lfrc`).

**This extension has been merged in Vim (9.1.0778 and newer) and Neovim (0.11 and newer), so it should work out of the box with the recent versions of these programs.**

You can raise the issues and pull requests in this GitHub repository to be later submitted to the Vim repository.

## Installation

- Vundle:

  ```vim
  Plugin 'andis-sprinkis/lf-vim'
  ```

- vim-plug:

  ```vim
  Plug 'andis-sprinkis/lf-vim'
  ```

- lazy.nvim:

  ```lua
  { 'andis-sprinkis/lf-vim', event = { 'BufReadPre lfrc' } }
  ```

- No plugin manager:

  Copy all of the directories in this repository to your `~/.vim/` directory (or to `${XDG_DATA_HOME:-~/.local/share}/nvim/plugged` for Neovim users).

## Shell syntax

For highlighting the shell commands this plugin uses the Vimscript `syntax include` pattern `syntax/sh.vim` (the `sh`,
`ksh`, `bash` preset included in Vim).

It can be changed using the variables:

| Setting                | Variable            |
| ---------------------- | ------------------- |
| The global setting     | `g:lf_shell_syntax` |
| A buffer-local setting | `b:lf_shell_syntax` |

For example:

```vim
" Vimscript
let g:lf_shell_syntax = "syntax/dosbatch.vim"
let b:lf_shell_syntax = "syntax/zsh.vim"
" Lua (Neovim)
lua vim.g.lf_shell_syntax = "syntax/dosbatch.vim"
lua vim.b.lf_shell_syntax = "syntax/zsh.vim"
```

---

See the `$VIMRUNTIME/syntax` directory for the available syntax options (`:echo $VIMRUNTIME`).

## Screenshots

![screenshotLf](https://i.imgur.com/jdQU7nB.png)

![screenshotShell](https://i.imgur.com/ReZoGj9.png)

Colorscheme used for these screenshots: [badwolf](https://github.com/sjl/badwolf "badwolf on github")

# lf-vim

Vim syntax highlighting for lfrc

# Installation

Using

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
  {
    'andis-sprinkis/lf-vim',
    event = { 'BufReadPre lfrc' }
  }
  ```
  
 - No plugin manager: copy all of the directories in this repository to your `~/.vim/` directory (or to`${XDG_DATA_HOME:-~/.local/share}/nvim/plugged` for Neovim users).

# Info

+ Separate colours used for lf variables like `$f`, `$fx`, `$fs` and `$id`.
+ Shell script highlighting is used between `cmd [CMD] ${{ }}`.

See screenshots for details.

# Screenshots

![screenshotLf](https://i.imgur.com/jdQU7nB.png)

![screenshotShell](https://i.imgur.com/ReZoGj9.png)

Colorscheme used for these screenshots: [badwolf](https://github.com/sjl/badwolf "badwolf on github")

**How to Edit your bashrc file**

In the terminal:

1. `nvim ~/.bashrc`

  a. If a bashrc file does note exist, create one: `touch ~/.bashrc`

add a PS1:

`PS1=' '`

This changes what the lines will look like in your terminal

'\\W'     - This will display the current PATH

To update the file after change it, save and enter the command: `source ~/.bashrc`

Change the line to whatever your heart desires.

- - - -

**How to Edit your Kitty File**

Go to Kitty Documentation: https://sw.kovidgoyal.net/kitty/

1. ctrl+shift+F2   to open kitty config file

- File path: `~/.config/kitty/kitty.conf`
- If you don't have one create one

2. copy and paste the provided kitty.conf file into your new kitty.conf file

- Reload config file shortcut: ctrl+shift+F5

To modify anything in the terminal, refer to the documentation

- - - -

**How to Edit PowerShell**

There is a folder called **WindowsPowerShell** in your Documents directory.
In this folder, you can create custom scripts for PowerShell.
Create a script called: `Microsoft.PowerShell_profile.ps1`
Paste the file here to your new file.

All you have to do is follow the simple syntax:
function name {
  // Your Code
}

- - - -

**My LazyVim Plugins**
How to Configure languages for LazyVim

For c++:
1. Install clangd
-  `sudo dnf install clangd`
-  `clangd --version`

2. Go to file path: `~/.config/nvim/lua/plugins`
3. Add the `languages.lua` plugin file from above
Run `:Mason` to install dependencies 
You can check if it installed correctly if you do `:Lazy` (LazyVim is picky on capitalization)

- - - -

**Z Shell Installation & Customization**

1. sudo dnf install zsh
- Set zsh to default using kitty

2. Change `~/.zshrc` file to provided file instead
- You will need to ask ChatGPT for the Git Repos to install some of the plugins
- Syntax highlighting: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
- Autojump: `sudo dnf install autojump`
- z: `git clone https://github.com/rupa/z.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/z`

- Install Oh-my-zsh
3. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
4. `sudo dnf install curl`

- Install Powerlevel10k
5. `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`
- optional: Install fonts

6. `source ~/.zshrc`

- - - -
**How to add Lazyvim to Windows without WSL**

1. [Install package manager Scoop](scoop.sh)

2. [Install Wezterm](https://wezterm.org/install/windows.html)
- NeoVim is picky on which terminals can be used since it has to support special graphic protocols. Can only use Kitty, Wezterm, and Ghosty. Wezterm is the only windows terminal allowed.

3. Run this command in wezterm in *Adminastrator*
- `scoop bucket add extras; scoop bucket add nerd-fonts; scoop bucket add versions; scoop install neovim python ripgrep fd nodejs-lts lazygit fzf gcc imagemagick ghostscript tectonic FiraCode-NF`

4. [Install Lazyvim](https://www.lazyvim.org/installation)
- `git clone https://github.com/LazyVim/starter C:\Users\<YourName>\AppData\Local\nvim`

5. Enter `nvim` and do `:checkhealth` to make sure everything is working and all dependencies are installed.

6. For Wezterm, you can customize it by creating a file called `.wezterm.lua` in `C:\Users\<YourName>`
- There is a simple file provided that will switch the base shell to Bash

- - - -

**Useful cmds**
Install:
- zen Browser:

    a. `yay -S zen-browser-bin`
  
    b. `yay -S zen-browser`
  
- Brave Browser: `sudo pacman -S brave`
- Discord: `sudo pacman -S discord`
- Spotify: `yay -S spotify`
- VScode: `sudo pacman -S code`

Dont forget to update: `yes | sudo pacman -Syu`

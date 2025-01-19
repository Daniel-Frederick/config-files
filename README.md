**How to Edit your bashrc file**

In the terminal:

1\. nvim ~/.bashrc

- If a bashrc file does note exist, create one: **touch ~/.bashrc**

add a PS1:

`PS1=' '`

This changes what the lines will look like in your terminal

'\\W'     - This will display the current PATH

To update the file after change it, save and enter the command: **source ~/.bashrc**

Change the line to whatever your heart desires.

- - - -

**How to Edit your Kitty File**

Go to Kitty Documentation: https://sw.kovidgoyal.net/kitty/

1\. ctrl+shift F2   to open kitty config file

- File path: ~/.config/kitty/kitty.conf
- If you don't have one create one

2\. copy and paste the provided kitty.conf file into your new kitty.conf file

- Reload config file shortcut: ctrl+shift F5

To modify anything in the terminal, refer to the documentation

- - - -

**How to Edit PowerShell**

There is a folder called **WindowsPowerShell** in your Documents directory.
In this folder, you can create custom scripts for PowerShell.
Create a script called: Microsoft.PowerShell_profile.ps1
Paste the file here to your new file.

All you have to do is follow the simple syntax:
function name {
  // Your Code
}

- - - -

**My LazyVim Setup**
How to Configure C++ for LazyVim
1. Install clangd
-  sudo dnf install clangd
-  clangd --version

2. Go to file path: ~/.config/nvim/lua/plugins
3. Add the clangd.lua plugin file from above
You can check if it installed correctly if you do ":Lazy" (LazyVim is picky on capitalization)

5. 

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

&nbsp;

**How to Edit your Kitty File**

Go to Kitty Documentation: https://sw.kovidgoyal.net/kitty/

1\. ctrl+shift F2   to open kitty config file

- If you don't have one create one

2\. Change anything you need and save. Do ctrl+shift F5 to reload the config file

To add anything to the terminal, go to the documentation.

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

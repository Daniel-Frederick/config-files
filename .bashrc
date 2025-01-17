# Function to get the current Git branch
function parse_git_branch {
  git branch 2>/dev/null | grep '\*' | sed 's/* //'
}

# Set the PS1 variable for a colorful prompt
PS1='\[\e[1;36m\]\w \[\e[1;37m\]$(if [ -n "$(parse_git_branch)" ]; then echo "on \[\e[1;31m\]$(parse_git_branch) \[\e[1;37m\]"; fi)λ \[\e[0;36m\]'

# Ensure typed input is cyan
bind 'set colored-completion-prefix on'
bind 'set completion-prefix-display-length 0'
bind 'set show-all-if-ambiguous on'

# Bind Ctrl+Backspace to delete the previous word
bind '"\C-H": backward-kill-word'

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

# ========================== SHELL USER CONFIGURATION ==========================
# Use this file to set your user configurations such as environment variables
# and paths.

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

if [ -f ~/.config/shell/.env ]; then
  source ~/.config/shell/.env
fi

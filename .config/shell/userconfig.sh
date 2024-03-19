# ========================== SHELL USER CONFIGURATION =========================
# Use this file to set your user configurations such as environment variables
# and paths.
# =============================================================================
# If you need to set environment variables with sensitive information, you can
# create a file called .env in the ~/.config/shell directory and set the
# variables there. This file will be sourced if it exists.

export LANG=en_US.UTF-8

# Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Source .env file
if [ -f ~/.config/shell/.env ]; then
  source ~/.config/shell/.env
fi

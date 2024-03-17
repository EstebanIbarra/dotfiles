# ============================== PERSONAL ALIASES =============================
# Use this file to set your personal aliases.
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Text Editor
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# Navigation
alias ~='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# ls -> exa
alias ls='exa -la --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# Colorize grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Security flags
alias cp='cp -i'      # Confirms before overwriting

# Quality of life
alias df='df -h'      # Human readable sizes
alias free='free -m'  # Shows sizes in MB

# Shutdown and Reboot
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot'

# Executables
alias python='python3'

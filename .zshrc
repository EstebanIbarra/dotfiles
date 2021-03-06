#				===>    CONFIG FILE FOR EIR'S ZSH    <===
#  _______ _____ ______  
# (_______|_____|_____ \ 
#  _____     _   _____) )
# |  ___)   | | (_____ ( 
# | |_____ _| |_      | |
# |_______|_____)     |_|
#
# Created: 15/Aug/2020 by Esteban Ibarra
# Modified: 25/Aug/2020 by Esteban Ibarra


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	docker
	zsh-syntax-highlighting
	zsh-autosuggestions
	tmux
)

ZSH_TMUX_AUTOSTART="true"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# COLORSCHEMES

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell"
[ -n "$PS1" ] && \
	[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
		eval "$("$BASE16_SHELL/profile_helper.sh")"
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# FUNCTIONS

# Extract files
ex ()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)    tar xjf $1    ;;
			*.tar.gz)     tar xzf $1    ;;
			*.bz2)        bunzip2 $1    ;;
			*.rar)        unrar x $1    ;;
			*.gz)         gunzip $1     ;;
			*.tar)        tar xf $1     ;;
			*.tbz2)       tar xjf $1    ;;
			*.tgz)        tar xzf $1    ;;
			*.zip)        unzip $1      ;;
			*.Z)          uncompress $1 ;;
			*.7z)         7z x $1       ;;
			*.deb)        ar x $1       ;;
			*.tar.xz)     tar xf $1     ;;
			*.tar.zst)    unzstd $1     ;;
			*)            echo "'$1' cannot be extracted via ex()"  ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# ALIASES

# Homebrew update
alias brew2u='brew update && brew upgrade'

# Text editor
alias v="nvim"
alias vi="vim"
alias vim="nvim"

# Development tools
alias composer="php /usr/local/bin/composer.phar"
alias magento="php -d memory_limit=4096M bin/magento"

# Navigation
alias ~='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Git commands
alias gitinit='git fetch origin master && git pull origin master'
alias gitstat='git status'
alias gitadd='git add -u'
alias gitaddall='git add .'
alias gitcommit='git commit -m'
alias gitfetch='git fetch origin'
alias gitpull='git pull origin'
alias gitpush='git push origin'

# Lists ls ==> exa
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
alias cp='cp -i'        # Confirms before overwriting something
alias df='df -h'        # Human-readable sizes
alias free='free -m'    # Shows sizes in MB

# Shutdown && Reboot
alias Sshutdown='sudo shutdown now'
alias Sreboot='sudo reboot'

# Dead End game
alias dunnet='emacs -batch -l dunnet'

# Homebrew Python 3
alias python3='/usr/local/bin/python3'
# PATH VARIABLE

# Python 3.8
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
# Php 7.3
PATH="/usr/local/php5/bin:${PATH}"
export PATH
# Maven 3.6.3
# export M2_HOME="/Applications/apache-maven-3.6.3"
# export PATH=$PATH:$M2_HOME/bin
# JAVA_HOME
# export JAVA_HOME=$(/usr/libexec/java_home)
# MySql => MAMP
export PATH=$PATH:/Applications/MAMP/Library/bin

# STARTUP PROGRAMS

archey
prompt_context(){}
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

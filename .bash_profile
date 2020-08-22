#				===>    CONFIG FILE FOR EIR'S BASH    <===
#  _______ _____ ______  
# (_______|_____|_____ \ 
#  _____     _   _____) )
# |  ___)   | | (_____ ( 
# | |_____ _| |_      | |
# |_______|_____)     |_|
#
# Created by Esteban Ibarra
# Modified: 21/Aug/2020 by Esteban Ibarra


source ~/.profile

# PATH VARIABLE

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Setting PATH for php7.3
PATH="/usr/local/php5/bin:${PATH}"
export PATH

# Setting PATH for Maven 3.6.3
export M2_HOME=/Applications/apache-maven-3.6.3
export PATH=$PATH:$M2_HOME/bin

# Setting JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

# Setting MAMP MySQL
export PATH=$PATH:/Applications/MAMP/Library/bin

# ALIAS

alias composer="php /usr/local/bin/composer.phar"
alias magento="php -d memory_limit=4096M bin/magento"
alias sync="bin/sync.sh"
alias vi="nvim"
alias vim="nvim"

# STARTUP APPS

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi
archey

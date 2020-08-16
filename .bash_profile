source ~/.profile

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

alias composer="php /usr/local/bin/composer.phar"

alias magento="php -d memory_limit=4096M bin/magento"

alias sync="bin/sync.sh"

alias vi="nvim"

alias vim="nvim"

# Setting PATH for Maven 3.6.3
export M2_HOME=/Applications/apache-maven-3.6.3
export PATH=$PATH:$M2_HOME/bin

# Setting JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

# Setting MAMP MySQL
export PATH=$PATH:/Applications/MAMP/Library/bin

alias mampSQL="/Library/Application Support/appsolute/MAMP PRO/db/mysql157"
alias mamphp73="/Applications/MAMP/bin/php/php7.3.9/bin/php"

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
  fi
archey

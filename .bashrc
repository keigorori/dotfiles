# .bashrc

# OS
if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 5)" == 'MINGW' ]; then                                                                                           
  OS='Windows'
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi

# locale
export LANG=en_US.UTF-8

# Git
if [ "$OS" = 'Mac' ]; then
    source /usr/local/etc/bash_completion.d/git-prompt.sh
    source /usr/local/etc/bash_completion.d/git-completion.bash

    GIT_PS1_SHOWDIRTYSTATE=true
    export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
fi

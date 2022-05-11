#.bashrc

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
    GIT_COMPLETION="/usr/local/etc/bash_completion.d/git-completion.bash"
    GIT_PROMPT="/usr/local/etc/bash_completion.d/git-prompt.sh"
elif [ "$OS" = 'Linux' ]; then
    GIT_COMPLETION="$HOME/.git-completion.bash"
    GIT_PROMPT="$HOME/.git-prompt.sh"
fi

if [ -f ${GIT_COMPLETION} ]; then
    source ${GIT_COMPLETION}
fi
if [ -f ${GIT_PROMPT} ]; then
    source ${GIT_PROMPT}
    export PS1='\[\e[32m\]\u@\h\[\e[00m\]:\[\e[34m\]\w\[\e[31m\]$(__git_ps1)\[\e[00m\]\n\$ '
    GIT_PS1_SHOWDIRTYSTATE=true
fi

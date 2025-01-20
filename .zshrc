#.zshrc

## locale
export LANG=en_US.UTF-8

## homebrew
export PATH=/opt/homebrew/bin:$PATH

## zsh-completions
if type brew &>/dev/null && [ -e $(brew --prefix)/share/zsh-completions ]; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

## git-prompt
if [ -e "$HOME/.zsh/git-prompt.sh" ]; then
    source "$HOME/.zsh/git-prompt.sh"
    GIT_PS1_SHOWDIRTYSTATE=true
    setopt PROMPT_SUBST
    PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '
fi

## ruby
if type rbenv &>/dev/null; then
    eval "$(rbenv init -)"
fi


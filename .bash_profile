# generated by Git for Windows
test -f ~/.bashrc && . ~/.bashrc

# pyenv
if type pyenv >/dev/null 2>&1; then
    export PYENV_ROOT=$HOME/.pyenv
    export PATH=$PYENV_ROOT/bin:$PATH
    eval "$(pyenv init -)"
fi

#!/bin/sh

if [ "$SHELL" = "/bin/zsh" ]; then
    ln -sf ~/dotfiles/.zshrc ~/.zshrc
    if [ ! -e "$HOME/.zsh" ]; then mkdir "$HOME/.zsh"; fi
    # git-promptのダウンロード
    if [ ! -e "$HOME/.zsh/git-prompt" ]; then
        echo "Downloading git-prompt"
        curl -o ~/.zsh/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
    fi
elif [ "$SHELL" = "/bin/bash" ]; then
    ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
    ln -sf ~/dotfiles/.bashrc ~/.bashrc
else
    echo "Unknown shell"
fi

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore ~/.gitignore

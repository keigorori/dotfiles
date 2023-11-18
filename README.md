# dotfiles
Setup dotfiles.

## Install
1. Clone this repository at home directory.
```
$ cd ~
$ clone https://github.com/keigorori/dotfiles.git
```
2. Run install command.
    * windows
        * Run ``install.bat``.
    * Linux
        * ``$ sh install.sh``
3. Create ``~/.gitconfig.local`` and setup global commit account.
```
[user]
    name="globalusername"
    email="global@email"
```
4. Setup commit account for this repository.
```
$ cd ~/dotfiles
$ git config --local user.email local@email
$ git config --local user.name username
```
5. Set remote URL.
```
$ git remote set-url origin https://keigorori@github.com/keigorori/dotfiles.git
```

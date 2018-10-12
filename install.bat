@echo off
setlocal
pushd "%~dp0"

mklink %HOMEPATH%"\.bash_profile" %HOMEPATH%"\dotfiles\.bash_profile"
mklink %HOMEPATH%"\.bashrc" %HOMEPATH%"\dotfiles\.bashrc"
::mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\.vsvimrc" %HOMEPATH%"\dotfiles\.vsvimrc"
mklink %HOMEPATH%"\.gitconfig" %HOMEPATH%"\dotfiles\.gitconfig"
mklink %HOMEPATH%"\.gitignore" %HOMEPATH%"\dotfiles\.gitignore"

popd
exit /B 0
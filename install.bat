@echo off
setlocal
pushd "%~dp0"

::mklink %HOMEPATH%"\.bashrc" %HOMEPATH%"\dotfiles\.bashrc"
::mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\.gitconfig" %HOMEPATH%"\dotfiles\.gitconfig"

popd
exit /B 0
#!/usr/bin/env bash

which -s zsh
if [[ $? == 0 ]] ; then
  echo "no zsh detected - installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

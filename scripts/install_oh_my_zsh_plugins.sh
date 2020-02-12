#!/usr/bin/env bash

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/KasperChristensen/mylocation.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/mylocation
git clone https://github.com/zlsun/solarized-man.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/solarized-man
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
git clone https://github.com/KasperChristensen/mylocation.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/mylocation
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z

# Install zsh-wakatime plugin
pip install 'wakatime>=12.0'
git clone https://github.com/wbingli/zsh-wakatime ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-wakatime

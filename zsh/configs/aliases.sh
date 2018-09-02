# Unix
alias ls='gls -AFh ${colorflag} --group-directories-first'
alias lsd='ls -l | grep "^d"' # only directories
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias e="$EDITOR"
alias v="$VISUAL"

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

# File size
alias fs="stat -f \"%z bytes\""

# typo
alias where=which # sometimes i forget

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# brew
alias brewup="brew update; brew upgrade; brew prune; brew cleanup; brew doctor;"
alias cask='brew cask' # i <3 u cask

# rails
alias bun="bundle"
alias migrate="rake db:migrate"
alias rollback="db:rollback"
alias rs="rspec"

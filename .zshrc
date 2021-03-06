# Set CLI colors on mac
export CLICOLOR=1

# Display directories as lightblue when using ls
export LSCOLORS=GxFxCxDxBxegedabagaced

export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Postgres App
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

# golang
export GOPATH=$HOME/go_workspaces
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

source /usr/local/bin/virtualenvwrapper.sh

# zsh configs
ZSH_CONFIGS=$HOME/zsh/configs

# zsh scripts
ZSH_SCRIPTS=$HOME/zsh/scripts

# zsh functions
ZSH_FUNCTIONS=$HOME/zsh/functions

# Disabling compfix so can source files
ZSH_DISABLE_COMPFIX="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# POWERLEVEL CONFIGURATIOn
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

# POWERLEVEL9K_MODE must be specified before ZSH_THEME
# https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  context
  root_indicator
  dir
  vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  vi_mode
  status
  node_version
  virtualenv
  rbenv
  time
  ram
  battery
)

#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M %m.%d.%y}"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_STATUS_VERBOSE=false

#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_NODE_VERSION_BACKGROUND='022'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  autojump
  bundler
  brew
  colored-man-pages
  colorize
  dotenv
  encode64
  golang
  git
  gitfast
  httpie
  jsontools
  mylocation
  npm
  nvm
  osx
  pip
  python
  rails
  rake
  rbenv
  redis-cli
  ruby
  urltools
  vi-mode
  virtualenv
  virtualenvwrapper
  vscode
  web-search
  wd
  yarn
  you-should-use
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  zsh-wakatime
  zsh-z
)

cdpath=(
  $HOME/projects
)

fpath=(
  $ZSH_FUNCTIONS
  $fpath
)

autoload -Uz compinit && compinit
autoload -U add-zsh-hook
autoload -U $ZSH_FUNCTIONS/*(:t)

add-zsh-hook chpwd load-nvmrc
add-zsh-hook chpwd auto-ls

# Source the config files
source $ZSH_CONFIGS/aliases.sh
source $ZSH_CONFIGS/editor.sh
source $ZSH_CONFIGS/history.sh
source $ZSH_CONFIGS/keybindings.sh
source $ZSH_CONFIGS/options.sh
source $ZSH_CONFIGS/window.sh

# Source the scripts
source $ZSH_SCRIPTS/npm-completion.sh
source $ZSH_SCRIPTS/nvm.sh
source $ZSH_SCRIPTS/prompt.sh
source $ZSH_SCRIPTS/rbenv-init.sh
source $ZSH_SCRIPTS/tabtab-source-yarn-package.sh

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

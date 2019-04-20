# If you come from bash you might have to change your $PATH.
export PATH=:$PATH:$HOME/bin:/usr/local/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/Applications/Code.app/Contents/Resources/app/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Cask Application Setting

// https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md#options
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status node_version background_jobs history time)

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
  bundler
  brew
  calc
  colored-man-pages
  dotenv
  encode64
  git
  github
  httpie
  jira
  jsontools
  mylocation
  npm
  osx
  pip
  python
  rails
  rake
  rbenv
  ruby
  rvm
  urltools
  vi-mode
  web-search
  wd
  yarn
  you-should-use
  zsh-autosuggestions
  zsh-completions
  zsh-plugin-rails
  zsh-syntax-highlighting
)

cdpath=(
  $HOME/groove
  $HOME/projects
)

fpath=(
  $ZSH_FUNCTIONS
  $fpath
)

autoload -U compinit
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
source /usr/local/etc/profile.d/z.sh

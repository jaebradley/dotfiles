echo "Create vim 8 plugins directory"
# https://vi.stackexchange.com/a/9523

echo "Creating directory for plugins that will be loaded on start"
mkdir -p ~/.vim/pack/plugins/start

echo "Going to start directory"
cd ~/.vim/pack/plugins/start

### Jedi Vim Installation
# https://github.com/davidhalter/jedi-vim
# https://github.com/davidhalter/jedi
git clone git@github.com:davidhalter/jedi-vim.git
cd jedi-vim
git submodule update --init --recursive
pip3 install pynvim
cd ..
###

# https://github.com/pangloss/vim-javascript
git clone git@github.com:pangloss/vim-javascript.git

# https://github.com/airblade/vim-gitgutter
git clone git@github.com:airblade/vim-gitgutter.git

# https://github.com/vim-ruby/vim-ruby
git clone git@github.com:vim-ruby/vim-ruby.git

# https://github.com/tpope/vim-rails
git clone git@github.com:tpope/vim-rails.git

# https://github.com/tpope/vim-surround
git clone git@github.com:tpope/vim-surround.git

# https://github.com/dense-analysis/ale
git clone git@github.com:dense-analysis/ale.git

# https://github.com/scrooloose/nerdtree
git clone git@github.com:scrooloose/nerdtree.git

# https://github.com/scrooloose/nerdcommenter
git clone git@github.com:scrooloose/nerdcommenter.git

# https://github.com/mileszs/ack.vim
git clone git@github.com:mileszs/ack.vim.git

# https://github.com/justinmk/vim-sneak
git clone git@github.com/justinmk/vim.sneak.git

# https://github.com/tpope/vim-repeat
git clone git@github.com/tpope/vim-repeat.git

# https://github.com/valloric/MatchTagAlways
git clone git@github.com/valloric/MatchTagAlways.git

# https://github.com/wellle/tmux-complete.vim
git clone git@github.com:wellle/tmux-complete.vim.git

# https://github.com/honza/vim-snippets
git clone git@github.com:honza/vim-snippets.git

# http://ctrlpvim.github.io/ctrlp.vim/#installation
# Add ctrlp to start directory instead of bundle directory like in documentation
git clone git@github.com:ctrlpvim/ctrlp.vim.git

# https://github.com/wakatime/vim-wakatime
git clone git@github.com:wakatime/vim-wakatime.git


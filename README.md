# Dotfiles

This represents my local development setup.

I currently use a Mac, so all of the configurations, scripts, etc. are geared towards a Mac environment.

I'm always looking for ways to become more efficient and discover tools that I haven't heard about, so feel free to pass along any tips from _your_ workflow!

## Environment Overview

### Languages

The set of languages I've been using / work with on at least a semi-regular basis is

* `JavaScript`
* `Ruby`
* `Python`
* `Java`

So the tools I install are geared towards providing support for those languages.

### Text Editors and IDEs

I was, and still am, a huge supporter of `VSCode - I think the application is phenomenal and the community is thriving.

That being said, recently, I've moved to `Vim` as my text editor. Partly this was a training exercise in learning a new tool, and partly because I think the long-term efficiency benefits of learning `Vim` (especially considering it's basically available universally) is worth giving up `VSCode`.

From an IDE standpoint, I think `JetBrains` does a phenomenal job building IDE applications, and I use `IntelliJ` and `PyCharm` on a regular basis, and plan to use more `RubyMine` and `WebStorm` in the future.

### Other Tools and Miscellania

* I use [`zsh`](http://zsh.sourceforge.net/)
* ...and (surprise, surprise) I also use [`oh-my-zsh`](https://github.com/ohmyzsh/ohmyzsh)
* I use [`powerlevel9k`](https://github.com/Powerlevel9k/powerlevel9k) to provide helpful contextual information when using the command line
* I'm a big fan of `Postgres`
* I'm a big fan of command line tools (some would argue, to a fault) and I've been trying to improve my fluency in the terminal (using tools like `tmux`) as well as leveraging helpers like `the_silver_searcher` and `hub`
* I used to love `iTerm2` (and it still has a special place in my heart) but I'm more of a [`hyper`](https://github.com/zeit/hyper) person myself now (especially since I was able to get `powerlevel` to work with it)* I use [`Spectacle`](https://www.spectacleapp.com/) as my window manager
* I use [`Flycut`](https://github.com/TermiT/Flycut) as my clipboard manager
* I use [`Station`](https://getstation.com/) for all my non-development applications (it is basically an application that houses my `Slack`, email, etc.)
* I use [`RescueTime`](https://www.rescuetime.com/), [`Wakatime`](https://wakatime.com/), and [`Timing`](https://timingapp.com/) as my productivity-measuring applications
* I try and install the tools and applications I find most useful using `homebrew` so check out my `cask.sh` and `install.sh` script files

## Installation

Assuming a fresh new environment, the easiest way to install these dotfiles is to use [a bare `Git` repository](https://www.atlassian.com/git/tutorials/dotfiles)

```bash
# Assuming you're in the $HOME directory
git clone --bare git@github.com:jaebradley/dotfiles.git ~/.dotfiles

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

config checkout
```

As explained in the above link, this will basically clone this repository into a `.dotfiles` directory, define a helper `alias` for checking out the bare repository into the `$HOME` directory. There _shouldn't_ be any file collisions with a fresh new environment, but if there are, check the article for ways to "backup" your existing files that are causing the collisions.

Then, execute the `scripts/start.sh` script and (hopefully) see a development environment slowly get set-up. There may be times where you will have to supply your password and/or interact with the command-line  briefly (like pressing enter, or setting up the `heroku cli` by logging into Heroku via browser).

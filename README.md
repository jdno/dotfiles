# Dotfiles

The _dotfiles_ are managed using [rcm] by [thoughtbot]. Follow these
instructions to set up a new environment.

## Getting Started

Setting up a new environment is easy thanks to [rcm].

### Install rcm

[rcm] provides [installation instructions][installation] for most operation
systems. On macOS, installation is as simple as running:

    brew tap thoughtbot/formulae
    brew install rcm

### Clone this repo

[rcm] uses `~/.dotfiles` as the default directory. Clone this repository to
this location:

    git clone git@github.com:jdno/dotfiles.git ~/.dotfiles

### Bootstrap system

To copy all dotfiles from the repository to their right locations, simply run:

    rcup

## Tags

[rcm] supports tagging dotfiles. All available tags can be found by inspecting
the directories in the repository: Every directory starting with `tag-` stores
files that are only installed when passing in the tag:

   rcup -t fish

[installation]: https://github.com/thoughtbot/rcm#installation
[rcm]: http://thoughtbot.github.io/rcm/rcm.7.html
[thoughtbot]: https://thoughtbot.com

#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew & Upgrade any already-installed formulae.
brew update
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs

# Install more dev tools
brew install git
brew install diff-so-fancy
brew install wget
brew install watch
brew cask install imageoptim
brew cask install gpg-suite
brew cask install docker
brew cask install visual-studio-code
brew cask install pycharm

# Install the Browsers
brew cask install firefox
brew cask install google-chrome
brew cask install brave-browser
brew cask install beaker-browser

# Apps
brew cask install vlc
brew cask install zoomus
brew cask install keybase
brew cask install spotify
brew cask install telegram
brew cask install whatsapp
brew cask install simplenote

# Remove outdated versions from the cellar.
brew cleanup

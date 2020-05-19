# Dev env setup 💻

## Installs

### Install a nice terminal (iterm2 v3) and shell (zsh)

Download from https://www.iterm2.com and then:

```
# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install git
git

# create code directort
mkdir ~/code
cd ~/code

# clone this repo
git clone https://github.com/fbaiodias/dotfiles.git
cd ~/dotfiles

# install base software
./base.sh
```

### Install all the software part I (via brew)

```
# Install brew first
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

./brew.sh
```

## Configuration

### git

````
ln .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global push.default current
git config --global core.autocrlf false
git config --global core.autolf true
git config --global user.email "francisco@baiodias.com"
git config --global user.name "Francisco Baio Dias"
``

# macos

- Open System Preferences > Keyboard
  - Set _Key Repeat_ to **Fast**
  - Set _Delay Until Repeat_ to **Short**

# vscode

- Install [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
- Login with github
- Run `Sync: download settings`

# nvm & node

```sh
nvm i 10
nvm i 12
nvm i 14
nvm alias default 12
nvm use default

brew install yarn
````

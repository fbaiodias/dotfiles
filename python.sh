#!/usr/bin/env bash

brew install python@3.8
brew install pipenv
brew install pre-commit

echo 'export PATH="/usr/local/opt/python@3.8/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/usr/local/opt/python@3.8/lib"

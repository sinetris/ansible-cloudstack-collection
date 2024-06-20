#!/usr/bin/env bash
set -Eeuo pipefail

sudo apt update
sudo apt install -y shellcheck libonig-dev bash-completion

# Is likely that your host UID and the container UID are different.
# To avoid complaints when running 'tox', we tell git to ignore it.
git config --global --add safe.directory '*'
cp "${PROJECT_WORKDIR}/.devcontainer/assets/.gitignore_global" ~/.gitignore_global

pip install --upgrade pip
cd "${PROJECT_WORKDIR}" && pip install -r requirements-dev.txt

# To run 'tox' on multiple Python versions we will use 'pyenv' and 'pyenv-virtualenv'.

echo "Install pyenv and pyenv-virtualenv"

curl https://pyenv.run | bash

tee -a ~/.bashrc > /dev/null <<-'EOF'
	export PYENV_ROOT="$HOME/.pyenv"
	[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
EOF

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv install
pyenv local

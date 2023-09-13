# python_config

custom config for NvChad for python programming with 

Autocompletion
    * pyright
Formatters 
    * black 
linters
    *  mypy
    *  ruff
debuggers
    *  debugpy

*  auto formatting on save
*  custom keybinds spc d b   (to set breakpoint)
                   spc d f p (to start debugpy-ui aka debugging)

# wsl-dependencies-ubuntu
sudo add-apt-repository ppa:neovim-ppa/unstable

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20

echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get install -y ca-certificates nodejs neovim curl gnupg unzip ripgrep build-essential python3 python3.10-venv python3-pip xclip

# post
NvChadUpdate
MasonInstallAll
TSInstall python
checkhealth

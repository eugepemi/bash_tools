#bin/bash
## Snapshot from bashrc
cp ~/.bashrc ~/.bashrc.bak
## Install Oh My Bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" --unattended
## Setup agnoster theme
sudo apt-get install fonts-powerline
sed -i 's/^OSH_THEME=.*/OSH_THEME="agnoster"/g' ~/.bashrc
echo -e '#\n# Show Python venv\nOMB_PROMPT_SHOW_PYTHON_VENV=true' >> ~/.bashrc
## Enable syntax highlighting, autosuggestions
curl -L https://github.com/akinomyoga/ble.sh/releases/download/nightly/ble-nightly.tar.xz | tar xJf -
mkdir -p ~/.local/share/blesh
cp -Rf ble-nightly/* ~/.local/share/blesh/
rm -rf ble-nightly
echo -e '#\n# Autocomplete, syntax\nsource ~/.local/share/blesh/ble.sh' >> ~/.bashrc
source ~/.bashrc
echo "Process completed. Please restart your terminal."
## This file is more notes then any actual config.


# install ohmyzsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

=============================

# Install addons

sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

=============================

# Edit the zshrc file
# some use vi, I use nano because 'l33t h4x'

nano .zshrc

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source .zshrc

=============================
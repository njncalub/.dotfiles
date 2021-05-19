# .dotfiles

Nap's personal configuration files.

## Usage

You can use [stow](https://www.gnu.org/software/stow/) to create symlinks for your configuration files.

```bash
# install stow from apt
sudo apt install -y stow

# clone the latest version of the repo
git clone --depth=1 https://github.com/njncalub/.dotfiles.git ~/.dotfiles && \
  cd ~/.dotfiles/stow

# run the simulation to check if there are no errors and everything is to your liking
# see `man stow` or `stow -h` for more details
stow -nvt ~ *

# if you're happy with the results, just remove the `-n` flag
stow -vt ~ *

# if you want to select just a few packages, you can do that as well:
stow -nvt ~ git shell byobu
```

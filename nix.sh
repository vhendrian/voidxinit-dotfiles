sh <(curl -L https://nixos.org/nix/install) --no-daemon
source $HOME/.nix-profile/etc/profile.d/nix.sh



# bashrc
. /home/vhen/.nix-profile/etc/profile.d/nix.sh


# home-manager

export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}


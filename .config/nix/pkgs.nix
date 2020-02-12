#
# See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs.
#
import (
  builtins.fetchGit {
    # Descriptive name to make the store path easier to identify.
    name = "nix-dev-env-example-20200206-031253";
    url = https://github.com/nixos/nixpkgs/;
    # `git ls-remote https://github.com/NixOS/nixpkgs-channels nixpkgs-unstable`
    rev = "0c960262d159d3a884dadc3d4e4b131557dad116";
  }
)

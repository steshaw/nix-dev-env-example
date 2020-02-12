let pinnedPkgs = import ./pkgs.nix {};
in { pkgs ? pinnedPkgs }:
with pkgs;
stdenv.mkDerivation {
  name = "nix-dev-env-services-example";
  buildInputs = [
    glibcLocales
    gettext
    perl
    postgresql_12
    redis
  ];

  shellHook = ''
    source .config/environment

    trap 'down' EXIT
    up
  '';
}

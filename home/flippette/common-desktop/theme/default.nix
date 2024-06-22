{ pkgs, ... }: {
  imports = [
    ./cursor.nix
    ./dconf.nix
    ./gtk.nix
  ];
}

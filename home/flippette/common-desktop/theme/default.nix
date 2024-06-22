{ pkgs, ... }: {
  imports = [
    ./cursor.nix
    ./dconf.nix
    ./foot.nix
    ./gtk.nix
  ];
}

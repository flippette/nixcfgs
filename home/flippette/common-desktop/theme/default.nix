{ pkgs, ... }: {
  imports = [
    ./cursor.nix
    ./dconf.nix
    ./foot.nix
    ./gtk.nix
    ./hyprland.nix
    ./qt.nix
  ];
}

{ pkgs, ... }:
{
  imports = [
    ./bat.nix
    ./bemenu.nix
    ./cursor.nix
    ./dconf.nix
    ./dunst.nix
    ./foot.nix
    ./gtk.nix
    ./hyprland.nix
    ./icons.nix
    ./qt.nix
    ./waybar.nix
  ];
}

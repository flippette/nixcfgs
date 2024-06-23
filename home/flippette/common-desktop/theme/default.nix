{ pkgs, ... }: {
  imports = [
    ./bemenu.nix
    ./cursor.nix
    ./dconf.nix
    ./foot.nix
    ./gtk.nix
    ./hyprland.nix
    ./icons.nix
    ./qt.nix
    ./waybar.nix
  ];
}

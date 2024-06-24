{ pkgs, ... }:
{
  home.pointerCursor = {
    gtk.enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 22;
  };

  wayland.windowManager.hyprland.settings.env = [ "XCURSOR_SIZE,22" ];
}

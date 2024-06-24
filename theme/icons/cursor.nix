{ pkgs, ... }:
{
  home.pointerCursor = {
    gtk.enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 22;
  };

  # there's not really a good answer as to where to put this,
  # so here it will go (for now)
  wayland.windowManager.hyprland.settings.env = [ "XCURSOR_SIZE,22" ];
}

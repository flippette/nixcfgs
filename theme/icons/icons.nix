{pkgs, ...}: {
  gtk.iconTheme = {
    name = "Papirus-Dark";
    package = pkgs.papirus-icon-theme;
  };

  # NOTE: the qt icon theme is set in `qt.nix`,
  #       at least until i can figure out how to
  #       merge config files :shrug:
}

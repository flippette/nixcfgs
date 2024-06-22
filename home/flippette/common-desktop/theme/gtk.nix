{ config, pkgs, ... }: {
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Mocha-Standard-Mauve-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "mauve" ];
        variant = "mocha";
      };
    };
  };

  # gtk4 :shrug:
  xdg.configFile = 
  let
    package = config.gtk.theme.package;
    name = config.gtk.theme.name;
    themeDir = "${package}/share/themes/${name}";
  in {
    "gtk-4.0/assets".source = "${themeDir}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${themeDir}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source = "${themeDir}/gtk-4.0/gtk-dark.css";
  };
}

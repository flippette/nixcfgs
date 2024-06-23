{ config, pkgs, ... }: {
  home.packages = [
    pkgs.catppuccin-qt5ct
    pkgs.lightly-qt
  ];

  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

  xdg.configFile =
  let
    package = pkgs.catppuccin-qt5ct;
    name = "Catppuccin-Mocha";
    themeDir = "${package}/share/qt5ct/colors";
    text = ''
      [Appearance]
      custom_palette=true
      color_scheme_path=${themeDir}/${name}.conf
      icon_theme=Papirus-Dark
      standard_dialogs=xdgdesktopportal
      style=Lightly

      [Fonts]
      fixed="Cantarell,12,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,Regular"
      general="Cantarell,12,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,Regular"
    '';
  in {
    "qt5ct/qt5ct.conf".text = text;
    "qt6ct/qt6ct.conf".text = text;
  };
}

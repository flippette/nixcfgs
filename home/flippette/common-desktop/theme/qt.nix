{ config, pkgs, ... }: {
  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style = {
      name = "Catppuccin-Mocha";
      package = pkgs.catppuccin-qt5ct;
    };
  };

  xdg.configFile =
  let
    package = config.qt.style.package;
    name = config.qt.style.name;
    themeDir = "${package}/share/qt5ct/colors";
    text = ''
      [Appearance]
      custom_palette=true
      color_scheme_path=${themeDir}/${name}.conf
      standard_dialogs=xdgdesktopportal
    '';
  in {
    "qt5ct/qt5ct.conf".text = text;
    "qt6ct/qt6ct.conf".text = text;
  };
}

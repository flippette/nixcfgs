{pkgs, ...}: {
  fonts.fontconfig = {
    defaultFonts = {
      emoji = ["Twitter Color Emoji"];
      monospace = ["Iosevka Comfy"];
      sansSerif = [
        "Cantarell"
        "Noto Sans"
      ];
      serif = ["Noto Serif"];
    };

    enable = true;
  };

  home.packages = with pkgs; [
    cantarell-fonts
    iosevka-comfy.comfy
    iosevka-comfy.comfy-fixed
    (nerdfonts.override {fonts = ["NerdFontsSymbolsOnly"];})
    noto-fonts
    twemoji-color-font
  ];
}

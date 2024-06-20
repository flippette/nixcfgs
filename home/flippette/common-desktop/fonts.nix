{ pkgs, ... }: {
  fonts.fontconfig = {
    defaultFonts = {
      emoji = [ "Twitter Color Emoji" ];
      monospace = [ "Iosevka Comfy" ];
      sansSerif = [ "Noto Sans" ];
      serif = [ "Noto Serif" ];
    };

    enable = true;
  };

  home.packages = with pkgs; [
    iosevka-comfy.comfy
    noto-fonts
    twemoji-color-font
  ];
}

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
    iosevka-comfy.comfy-fixed
    noto-fonts
    twemoji-color-font
  ];
}

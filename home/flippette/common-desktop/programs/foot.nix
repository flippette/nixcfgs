{ ... }: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        dpi-aware = true;
        font = "Iosevka Comfy Fixed:size=18";
        pad = "0x0 center";
      };

      scrollback = {
        lines = 10000;
        multiplier = 5.0;
      };

      mouse.hide-when-typing = "yes";
    };
  };
}

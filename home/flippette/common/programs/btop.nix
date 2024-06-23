{ ... }: {
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "catppuccin_mocha";
      check_temp = false;
    };
  };

  xdg.configFile."btop/themes/catppuccin_mocha.theme".source = builtins.fetchurl {
    url = "https://raw.githubusercontent.com/catppuccin/btop/main/themes/catppuccin_mocha.theme";
    sha256 = "4c7469ab9bda282c1ff606aca37c9c0b84cd0cb66d041e4e7e1fed39791f4644";
  };
}

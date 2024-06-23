{ ... }:
let
  themeFile = builtins.fetchurl {
    url = "https://raw.githubusercontent.com/catppuccin/btop/main/themes/catppuccin_mocha.theme";
    sha256 = "4c7469ab9bda282c1ff606aca37c9c0b84cd0cb66d041e4e7e1fed39791f4644";
  };
in {
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "${themeFile}";
      theme_background = true;
      truecolor = true;
      rounded_corners = true;
      update_ms = 2000;
      proc_sorting = "cpu direct";
      proc_per_core = true;
      show_coretemp = true;
      temp_scale = "celcius";
      show_swap = true;
      swap_disk = false;
    };
  };
}

{ ... }: {
  # theme file
  xdg.configFile."hypr/theme.conf".source = builtins.fetchurl {
    url = "https://raw.githubusercontent.com/catppuccin/hyprland/main/themes/mocha.conf";
    sha256 = "4b154dbd96637ee3c0db207dc40d041c712713d788409005541214b838922314";
  };

  wayland.windowManager.hyprland = {
    settings = {
      source = [ "${xdg.configHome}/hypr/theme.conf" ];
      general."col.active_border" = "$mauve";
    };
  };
}

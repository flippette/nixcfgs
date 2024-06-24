{ pkgs, ... }:
{
  dconf = {
    enable = true;
    settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };

  home.packages = [ pkgs.dconf ];
}

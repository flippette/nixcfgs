{ pkgs, ... }:
{
  home.packages = with pkgs; [
    grim
    grimblast
    pavucontrol
    wl-clipboard-rs
  ];
}

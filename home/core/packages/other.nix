{ pkgs, ... }:
{
  home.packages = with pkgs; [
    dust
    ffmpeg_7-full
    grim
    grimblast
    pavucontrol
    pfetch-rs
    tokei
    unzip
    wl-clipboard-rs
  ];

  programs = {
    bat.enable = true;
    bemenu.enable = true;
    fd.enable = true;
    ripgrep.enable = true;
  };

  services = {
    dunst.enable = true;
    network-manager-applet.enable = true;
    udiskie.enable = true;
  };
}

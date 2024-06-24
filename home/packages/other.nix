{ pkgs, ... }:
{
  home.packages = with pkgs; [
    dust
    ffmpeg_7-full
    pfetch-rs
    tokei
    unzip
  ];

  programs = {
    bat.enable = true;
    fd.enable = true;
    ripgrep.enable = true;
  };
}

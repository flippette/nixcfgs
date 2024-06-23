{ pkgs, ... }: {
  home.packages = with pkgs; [
    dust
    ffmpeg_7-full
    nvtopPackages.full
    pfetch-rs
    tokei
    unzip
  ];
}

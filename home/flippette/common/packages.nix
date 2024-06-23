{ pkgs, ... }: {
  home.packages = with pkgs; [
    dust
    nvtopPackages.full
    pfetch-rs
    tokei
    unzip
  ];
}

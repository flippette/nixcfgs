{ pkgs, ... }: {
  home.packages = with pkgs; [
    dust
    pfetch-rs
    tokei
    unzip
  ];
}

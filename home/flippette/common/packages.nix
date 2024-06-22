{ pkgs, ... }: {
  home.packages = with pkgs; [
    dust
    pfetch-rs
    unzip
  ];
}

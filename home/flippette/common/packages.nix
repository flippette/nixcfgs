{ pkgs, ... }: {
  home.packages = with pkgs; [
    pfetch-rs
  ];
}

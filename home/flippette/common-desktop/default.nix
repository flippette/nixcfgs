{ ... }: {
  imports = [
    ../common
    ./fonts.nix
    ./packages.nix
    ./programs
    ./services
    ./theme
    ./xdg.nix
    ./wm.nix
  ];
}

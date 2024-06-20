{ ... }: {
  imports = [
    ../common
    ./fonts.nix
    ./packages.nix
    ./programs
    ./services
    ./theme.nix
    ./xdg.nix
    ./wm.nix
  ];
}

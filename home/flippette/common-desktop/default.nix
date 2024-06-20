{ ... }: {
  imports = [
    ../common
    ./fonts.nix
    ./packages.nix
    ./programs
    ./theme.nix
    ./xdg.nix
    ./wm.nix
  ];
}

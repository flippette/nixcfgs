{ ... }: {
  imports = [
    ../common
    ./fonts.nix
    ./i18n.nix
    ./packages.nix
    ./programs
    ./services
    ./theme
    ./xdg.nix
    ./wm.nix
  ];
}

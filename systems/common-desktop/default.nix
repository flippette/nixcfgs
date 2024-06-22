{ ... }: {
  imports = [
    ../common
    ./boot.nix
    ./hardware.nix
    ./i18n.nix
    ./services
    ./theme
    ./users.nix
  ];
}

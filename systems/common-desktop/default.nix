{ ... }: {
  imports = [
    ../common
    ./boot.nix
    ./hardware.nix
    ./i18n.nix
    ./services
    ./users.nix
  ];
}

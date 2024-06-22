{ ... }: {
  imports = [
    ../common
    ./boot.nix
    ./hardware.nix
    ./services
    ./theme
    ./users.nix
  ];
}

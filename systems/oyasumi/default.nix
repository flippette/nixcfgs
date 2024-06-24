{ ... }:
{
  imports = [
    ./boot.nix
    ../common-desktop
    ./filesystems.nix
    ./hardware-configuration.nix
    ./hardware.nix
    ./misc.nix
    ./programs
    ./services
  ];
}

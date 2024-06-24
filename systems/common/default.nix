{ nixpkgs, ... }:
{
  imports = [
    ./boot.nix
    ./environment.nix
    ./hardware.nix
    ./misc.nix
    ./networking.nix
    ./programs
    ./users.nix
  ];

  nixpkgs.config.allowUnfree = true;
}

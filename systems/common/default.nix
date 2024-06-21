{ ... }: {
  imports = [
    ./boot.nix
    ./environment.nix
    ./misc.nix
    ./networking.nix
    ./programs
    ./users.nix
  ];
}

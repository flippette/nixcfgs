{ ... }: {
  imports = [
    ./boot.nix
    ./environment.nix
    ./misc.nix
    ./networking.nix
    ./programs.nix
    ./users.nix
  ];
}

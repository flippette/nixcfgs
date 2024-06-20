{ ... }: {
  imports = [
    ../common
    ./boot.nix
    ./services.nix
    ./users.nix
  ];
}

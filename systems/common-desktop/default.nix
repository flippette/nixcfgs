{ ... }: {
  imports = [
    ../common
    ./boot.nix
    ./services
    ./users.nix
  ];
}

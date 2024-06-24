{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    inputs@{ nixpkgs, ... }:
    {
      formatter = with nixpkgs.legacyPackages; {
        x86_64-linux = x86_64-linux.nixfmt-rfc-style;
      };

      nixosConfigurations = with nixpkgs.lib; {
        oyasumi = nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./sys/oyasumi
            ./theme/catppuccin-mocha/sys
          ];
        };
      };
    };
}

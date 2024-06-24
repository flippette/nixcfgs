{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ nixpkgs, home-manager, ... }:
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
            { system.stateVersion = "24.05"; }

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.flippette.imports = [
                ./home/oyasumi
                ./theme/catppuccin-mocha/home
                { home.stateVersion = "24.05"; }
              ];
              home-manager.extraSpecialArgs = {
                inherit inputs;
              };
            }
          ];
        };
      };
    };
}

{
  description = "flippette's nixos config";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, home-manager, nixpkgs, ... } @ inputs: {
    nixosConfigurations = {
      oyasumi = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./systems/oyasumi
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.flippette = import ./home/flippette/common-desktop;
          }
        ];
      };
    };
  };
}

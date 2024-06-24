{
  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    pipewire-screenaudio = {
      url = "github:IceDBorn/pipewire-screenaudio";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, home-manager, nixpkgs, ... } @ inputs: {
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style;

    nixosConfigurations = {
      oyasumi = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./systems/oyasumi
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.flippette = import ./home/flippette/common-desktop;
            home-manager.extraSpecialArgs = { inherit inputs; };
          }
        ];
      };
    };
  };
}

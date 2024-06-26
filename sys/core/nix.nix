{nixpkgs, ...}: {
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
    };

    optimise = {
      automatic = true;
      dates = ["daily"];
    };

    settings = {
      auto-optimise-store = true;

      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  nixpkgs.config.allowUnfree = true;
}

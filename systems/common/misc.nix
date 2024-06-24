{ ... }:
{
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
    };
    optimise = {
      automatic = true;
      dates = [ "daily" ];
    };
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  system = {
    autoUpgrade.enable = true;

    # !!! DO NOT CHANGE !!!
    stateVersion = "24.05";
  };
}

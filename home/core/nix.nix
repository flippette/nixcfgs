{
  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    gc = {
      automatic = true;
      frequency = "daily";
    };
  };

  programs.home-manager.enable = true;
}

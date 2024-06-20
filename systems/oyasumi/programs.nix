{ ... }: {
  programs = {
    gamemode = {
      enable = true;
      settings.general.renice = 10;
    };

    # must be set here instead of home-manager
    hyprland.enable = true;
  };
}

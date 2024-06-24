{
  # we only need this for wayland, hence it being here
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.hyprland.enable = true;
}

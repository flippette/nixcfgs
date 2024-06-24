{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    curl
    efibootmgr
  ];

  programs = {
    git.enable = true;
    fish.enable = true;
  };
}

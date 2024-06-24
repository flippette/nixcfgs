{ lib, pkgs, ... }:
{
  boot = {
    kernelPackages = lib.mkDefault pkgs.linuxPackages_latest;

    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        configurationLimit = 8;
        consoleMode = "max";
        enable = true;
      };
      timeout = 0;
    };
  };
}

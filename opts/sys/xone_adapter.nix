{ config, pkgs, ... }:
{
  boot = {
    blacklistedKernelModules = [ "mt76x2u" ];
    extraModulePackages = [ config.boot.kernelPackages.xone ];
  };

  environment.systemPackages = [ pkgs.xow_dongle-firmware ];
}

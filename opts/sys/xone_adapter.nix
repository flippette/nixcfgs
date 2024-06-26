{ config, ... }:
{
  boot = {
    blacklistedKernelModules = [ "mt76x2u" ];
    extraModulePackages = with config.boot.kernelPackages; [ xone ];
  };
}

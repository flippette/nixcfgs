{
  config,
  pkgs,
  ...
}: {
  boot = {
    blacklistedKernelModules = ["mt76x2u"];
    extraModulePackages = [config.boot.kernelPackages.xone];
  };

  hardware.firmware = [pkgs.xow_dongle-firmware];
}

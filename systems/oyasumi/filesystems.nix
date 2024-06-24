{ lib, ... }:
{
  fileSystems = lib.mkForce {
    "/" = {
      device = "/dev/disk/by-label/root";
      fsType = "btrfs";
      options = [
        "compress-force=zstd:3"
        "noatime"
      ];
    };
    "/boot" = {
      device = "/dev/disk/by-label/esp";
      fsType = "vfat";
      options = [
        "fmask=0077"
        "noatime"
        "umask=0077"
      ];
    };
    "/home" = {
      device = "/dev/disk/by-label/home";
      fsType = "btrfs";
      options = [
        "compress-force=zstd:3"
        "noatime"
      ];
    };
    "/mnt/cold" = {
      device = "/dev/disk/by-label/cold";
      fsType = "btrfs";
      options = [
        "compress-force=zstd:10"
        "noatime"
      ];
    };
  };

  swapDevices = [ { device = "/swap/swapfile"; } ];
}

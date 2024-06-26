{ pkgs, ... }:
{
  boot = {
    # quiet boot
    consoleLogLevel = 0;
    initrd.verbose = false;
    
    # quiet boot
    kernelParams = [
      "boot.shell_on_fail"
      "loglevel=3"
      "quiet"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
    ];

    plymouth = {
      enable = true;
      theme = "catppuccin-mocha";
      themePackages = [ (pkgs.catppuccin-plymouth.override { variant = "mocha"; }) ];
    };
  };
}

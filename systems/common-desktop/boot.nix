{ lib, pkgs, ...  }: {
  boot = {
    consoleLogLevel = 0;
    initrd.verbose = false;
    kernel.sysctl."vm.max_map_count" = 1048576;
    kernelPackages = lib.mkForce pkgs.linuxPackages_zen;

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
      theme = "ibm";
      themePackages = with pkgs; [
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "ibm" ];
        })
      ];
    };
  };
}

{ ... }: {
  services = {
    libinput = {
      enable = true;
      mouse.accelProfile = "flat";
    };

    pipewire = {
      alsa = {
        enable = true;
        support32Bit = true;
      };
      enable = true;
      jack.enable = true;
      pulse.enable = true;
      systemWide = true;
    };
  };
}

{ ... }: {
  hardware = {
    bluetooth.enable = true;
    mcelog.enable = true;

    opengl = {
      driSupport = true;
      driSupport32Bit = true;
      enable = true;
    };
  };
}

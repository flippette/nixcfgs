{
  hardware = {
    # ideally we don't have to do this, but
    # 24.11 is still unstable so user packages 
    # might not do this for us yet :shrug:
    graphics = {
      enable = true;
      enable32Bit = true;
    };

    mcelog.enable = true;
  };
}

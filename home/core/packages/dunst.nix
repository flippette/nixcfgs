{
  services.dunst.settings = {
    global = {
      origin = "top-right";
      offset = "10x10";
      frame_width = 2;
      sort = "yes";
      font = "Monospace 12";
      alignment = "right";
      icon_position = "off";
    };

    urgency_low.timeout = 10;
    urgency_normal.timeout = 10;
    urgency_critical.timeout = 0;
  };
}

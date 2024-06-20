{ ... }: {
  services.dunst = {
    enable = true;

    settings = {
      global = {
        origin = "top-right";
        offset = "10x10";
        frame_width = 3;
        frame_color = "#aaaaaa";
        sort = "yes";
        font = "Monospace 12";
        alignment = "right";
        icon_position = "off";
      };

      urgency_low = {
        background = "#222222";
        foreground = "#888888";
        timeout = 3;
      };

      urgency_normal = {
        background = "#285577";
        foreground = "#ffffff";
        timeout = 5;
      };

      urgency_critical = {
        background = "#900000";
        foreground = "#ffffff";
        frame_color = "#ff0000";
        timeout = 0;
      };

    };
  };
}

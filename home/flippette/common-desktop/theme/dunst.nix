{ lib, ... }: 
let
  settings = {
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

  # catppuccin-mocha
  theme = {
    global = {
      frame_color = "#89b4fa";
      separator_color = "frame";
    };

    urgency_low = {
      background = "#1e1e2e";
      foreground = "#cdd6f4";
    };

    urgency_normal = {
      background = "#1e1e2e";
      foreground = "#cdd6f4";
    };

    urgency_critical = {
      background = "#1e1e2e";
      foreground = "#cdd6f4";
      frame_color = "#fab387";
    };
  };
in {
  services.dunst.settings = lib.recursiveUpdate settings theme;
}

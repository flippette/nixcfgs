{ ... }: {
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        spacing = 0;
        height = 32;

        modules-left = [
          "hyprland/workspaces"
          "hyprland/window"
        ];

        modules-right = [
          "wireplumber"
          "network"
          "cpu"
          "memory"
          "clock"
          "tray"
        ];

        tray.spacing = 10;

        clock = {
          format = "{:%H:%M %d-%m}";
          interval = 1;
        };

        cpu = {
          format = "cpu {usage}%";
          tooltip = false;
          interval = 1;
        };

        memory = {
          format = "mem {}%";
          interval = 1;
        };

        network = {
          format = "net up";
          tooltip-format = "{ifname} at {ipaddr} via {gwaddr}";
          format-disconnected = "net down";
          tooltip-format-disconnected = "net down";
          format-disabled = "net off";
          tooltip-format-disabled = "net off";
        };

        wireplumber = {
          format = "vol {volume}%";
          format-muted = "muted";
          scroll-step = 5.0;
          on-click = "pavucontrol";
          max-volume = 150;
        };

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "·";
            urgent = "!";
          };
        };
      };
    };
  };
}

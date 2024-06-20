{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      # key definitions
      "$mod" = "Super";
      "$left" = "H";
      "$right" = "L";
      "$up" = "K";
      "$down" = "J";

      # apps
      "$term" = "foot";
      "$dmenu" = "bemenu-run";

      general = {
        allow_tearing = true;
        border_size = 2;
        gaps_in = 3;
        gaps_out = 6;
      };

      decoration.rounding = 4;

      misc = {
        disable_hyprland_logo = true;
        mouse_move_enables_dpms = true;
        no_direct_scanout = false;
        enable_hyprcursor = false;
      };

      monitor = [
        "DP-2,1920x1080@144,auto,1"
      ];

      input = {
        sensitivity = 0.0;
        accel_profile = "flat";
        mouse_refocus = false;
      };

      dwindle.preserve_split = true;

      bind = [
        "$mod, Return, exec, $term"
        "$mod, D, exec, $dmenu"
        "$mod Shift_L, Q, killactive"
        "$mod Alt_L Ctrl_L, L, exec, hyprctl dispatch dpms"
        "$mod Alt_L Ctrl_L Shift, E, exit"

        # bind volume control to media keys
        ",122, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",123, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"

        # move focus
        "$mod, $left, movefocus, l"
        "$mod, $right, movefocus, r"
        "$mod, $up, movefocus, u"
        "$mod, $down, movefocus, d"

        # move focused window
        "$mod Shift_L, $left, movewindow, l"
        "$mod Shift_L, $right, movewindow, r"
        "$mod Shift_L, $up, movewindow, u"
        "$mod Shift_L, $down, movewindow, d"

        # switch workspaces
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        # move focused window to workspaces
        "$mod Shift_L, 1, movetoworkspacesilent, 1"
        "$mod Shift_L, 2, movetoworkspacesilent, 2"
        "$mod Shift_L, 3, movetoworkspacesilent, 3"
        "$mod Shift_L, 4, movetoworkspacesilent, 4"
        "$mod Shift_L, 5, movetoworkspacesilent, 5"
        "$mod Shift_L, 6, movetoworkspacesilent, 6"
        "$mod Shift_L, 7, movetoworkspacesilent, 7"
        "$mod Shift_L, 8, movetoworkspacesilent, 8"
        "$mod Shift_L, 9, movetoworkspacesilent, 9"
        "$mod Shift_L, 0, movetoworkspacesilent, 10"

        "$mod, F, fullscreen"
        "$mod Shift_L, Space, togglefloating"

        # screenshot
        "$mod Shift_L, P, exec, grimshot save anything"
        "$mod, P, exec, grimshot copy anything"
        "$mod Ctrl_L Shift_L, P, exec, grimshot save active"
        "$mod Ctrl_L, P, exec, grimshot copy active"

        # color picker
        "$mod, C, exec, hyprpicker -a"
        
        # screen locking
        # todo
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      animations.enabled = true;
      bezier = "ease_inout_sine, 0.37, 0, 0.63, 1";
      animation = "global, 1, 1.5, ease_inout_sine";

      exec-once = [
        "waybar"
      ];
    };
  };
}

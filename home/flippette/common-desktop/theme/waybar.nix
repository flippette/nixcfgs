{ ... }: 
let
  paletteFile = builtins.fetchurl {
    url = "https://raw.githubusercontent.com/catppuccin/waybar/main/themes/mocha.css";
    sha256 = "a6e30597ccc828e898844eb0cea9df7d73879ff5672a6a550f3acc24c93edd17";
  };
in {
  programs.waybar.style = ''
    @import "${paletteFile}";

    * {
      font-family: "monospace";
      font-size: 16px;
    }

    window#waybar {
      background-color: @base;
      color: @text;
      transition-property: background-color;
      transition-duration: .5s;
    }

    button {
      box-shadow: inset 0 -3px transparent;
      border: none;
      border-radius: 0;
    }

    button:hover {
      background: inherit;
      box-shadow: inset 0 -3px @text;
    }

    #workspaces button {
      padding: 0 5px;
      background-color: transparent;
      color: @text;
    }

    #workspaces button:hover {
      background: @surface0;
    }

    #workspaces button.focused {
      background-color: @surface2;
      box-shadow: inset 0 -3px @text;
    }

    #workspaces button.urgent {
      background-color: @red;
    }

    #clock,
    #battery,
    #cpu,
    #memory,
    #disk,
    #temperature,
    #backlight,
    #network,
    #pulseaudio,
    #wireplumber,
    #custom-media,
    #tray,
    #mode,
    #idle_inhibitor,
    #scratchpad,
    #mpd {
      padding: 0 10px;
      color: @text;
    }

    #window,
    #workspaces {
      margin: 0 4px;
    }

    .modules-left > widget:first-child > #workspaces {
      margin-left: 0;
    }

    .modules-right > widget:last-child > #workspaces {
      margin-right: 0;
    }
  '';
}

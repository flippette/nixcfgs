{pkgs, ...}: {
  programs.bat = {
    config.theme = "catppuccin-mocha";
    themes = {
      catppuccin-mocha = {
        src = pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "bat";
          rev = "d714cc1d358ea51bfc02550dabab693f70cccea0";
          sha256 = "439078343adf0882b750032cf78bdd5e7478da4e005c2a99cfab119fc6f399fe";
        };
        file = "themes/Catppuccin Mocha.tmTheme";
      };
    };
  };
}

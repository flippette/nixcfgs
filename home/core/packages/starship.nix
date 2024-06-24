{ lib, ... }:
{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      format = lib.concatStrings
      [
        "$directory"
        "$git_branch"
        "$git_status"
        "$line_break"
        "$character"
      ];

      add_newline = false;
      line_break.disabled = false;
    };
  };
}

{ ... }:
{
  programs.fish = {
    enable = true;
    functions.fish_greeting = "pfetch";
    shellAliases = {
      cat = "bat";
      du = "dust";
    };
  };
}

{ ... }: {
  programs.fish = {
    enable = true;
    functions.fish_greeting = "pfetch";
  };
}
